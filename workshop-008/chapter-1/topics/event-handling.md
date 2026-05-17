---
title: Event Handling — 동기/비동기 / 폴링/이벤트
date: 2026-05-16
group: D
---

# Event Handling — 동기 / 비동기 / 폴링 / 이벤트

---

## 동기 vs 비동기

### 동기 (Synchronous)

```
Kenny: "jarvis, 학생 목록 가져와."
jarvis: (가져오는 동안 Kenny 아무것도 못함)
jarvis: "가져왔습니다."
Kenny: (이제 다른 일 가능)
```

```python
# Python 동기
import requests

students = requests.get('/api/students').json()  # 응답 올 때까지 블로킹
lessons  = requests.get('/api/lessons').json()   # 그 다음 실행
print(students, lessons)
```

### 비동기 (Asynchronous)

```
Kenny: "jarvis, 학생 목록 가져와. 나는 다른 일 할게."
(Kenny 다른 일 진행 중)
jarvis: "가져왔습니다."
Kenny: "오케이. 처리할게."
```

```javascript
// Node.js 비동기
async function loadAll() {
  // 두 요청 동시 시작
  const [students, lessons] = await Promise.all([
    fetch('/api/students').then(r => r.json()),
    fetch('/api/lessons').then(r => r.json())
  ]);
  console.log(students, lessons);
}
```

### 시간축 비교

```
동기:
  T0  ---|--- fetch students ---|--- fetch lessons ---|--- done
         ^ 블로킹               ^ 블로킹

비동기 (병렬):
  T0  ---|--- fetch students ---|
         |--- fetch lessons ---|--- done
         ^ 동시 시작              ^ 더 빠름
```

---

## 콜백 → Promise → async/await 진화

```javascript
// 1세대: 콜백 (콜백 지옥)
fetch('/api/students', function(err, students) {
  if (err) return handleError(err);
  fetch('/api/lessons', function(err, lessons) {
    if (err) return handleError(err);
    // 무한 중첩...
  });
});

// 2세대: Promise
fetch('/api/students')
  .then(res => res.json())
  .then(students => fetch('/api/lessons'))
  .then(res => res.json())
  .then(lessons => console.log(lessons))
  .catch(err => handleError(err));

// 3세대: async/await (현재 표준)
async function load() {
  try {
    const students = await fetch('/api/students').then(r => r.json());
    const lessons  = await fetch('/api/lessons').then(r => r.json());
    console.log(students, lessons);
  } catch (err) {
    handleError(err);
  }
}
```

---

## 폴링 vs 이벤트 방식

### 폴링 (Polling)

주기적으로 물어봄. 비효율적 but 단순.

```javascript
// 5초마다 "새 메시지 있어?" 물어보기
setInterval(async () => {
  const messages = await fetch('/api/messages/new').then(r => r.json());
  if (messages.length > 0) displayMessages(messages);
}, 5000);
```

문제: 메시지 없어도 5초마다 서버 호출. 낭비.

### 이벤트 방식 (Event-driven / WebSocket)

변경이 생길 때 서버가 알려줌.

```javascript
// WebSocket
const ws = new WebSocket('wss://api.newton.school/realtime');

ws.onmessage = (event) => {
  const data = JSON.parse(event.data);
  if (data.type === 'new_lesson') displayLesson(data.lesson);
};

ws.onopen = () => console.log('Connected');
ws.onclose = () => reconnect();
```

### Webhook

서버 → 서버 이벤트 알림.

```
Stripe 결제 완료
  → Stripe 가 Kenny 서버에 POST /webhooks/payment 호출
  → Kenny 서버가 DB 업데이트 + 학부모에게 이메일

Drive 파일 변경
  → Google 이 Kenny 서버에 POST /webhooks/drive 호출
  → jarvis 가 sync 실행
```

---

## 이벤트 루프 (Node.js)

Node.js 가 싱글 스레드이면서 빠른 이유.

```
+----------------------------+
|  Call Stack                |  (JS 실행)
|    main()                  |
|    fetchStudents()         |
+----------------------------+
         |
         v
+----------------------------+
|  Event Loop                |  (빈 call stack 감시)
+----------------------------+
         |
         v
+----------------------------+
|  Callback Queue            |  (완료된 비동기 콜백 대기)
|    onStudentsFetched()     |
|    onLessonsFetched()      |
+----------------------------+
```

1. fetchStudents() 호출 → Node 가 OS에 위임 → Call Stack 즉시 비움
2. OS 가 응답 받으면 → Callback Queue 에 추가
3. Event Loop 가 Call Stack 비어있는지 확인 → 콜백 실행

Kenny 매핑: Event Loop = jarvis 가 여러 sub-agent 응답 기다리는 구조.

---

## ref

- node-vs-python.md § 비동기
- topics/networking.md (WebSocket)
