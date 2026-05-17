---
title: Networking — HTTP / WebSocket / Ajax
date: 2026-05-16
group: B + D
---

# Networking — HTTP / WebSocket / Ajax

---

## HTTP vs WebSocket

| | HTTP | WebSocket |
|---|---|---|
| 연결 | 요청마다 새 연결 (혹은 keep-alive) | 한 번 연결 → 유지 |
| 방향 | 클라이언트 → 서버 (단방향 요청) | 양방향 (서버 → 클라이언트 가능) |
| 상태 | Stateless | Stateful |
| 사용처 | 일반 API / 페이지 로드 | 실시간 채팅 / 주식 / 게임 |
| 프로토콜 | http:// https:// | ws:// wss:// |

```
HTTP:
  C --[GET /students]--> S
  C <--[200 + data]-- S
  (연결 끝)

WebSocket:
  C --[Upgrade to WS]--> S
  C <=====================> S  (양방향 지속 연결)
  S --[push: new_lesson]--> C  (서버 먼저 보낼 수 있음)
```

---

## Ajax

Asynchronous JavaScript And XML.
페이지 새로고침 없이 서버에서 데이터만 가져오는 기술.

```
1995년 이전:
  링크 클릭 → 전체 페이지 재로드

Ajax (2000년대):
  버튼 클릭 → 배경에서 서버 호출 → 데이터만 받아 일부 업데이트

Gmail (2004) 이 Ajax 혁신의 상징
```

### 진화

```
XMLHttpRequest (원조, 복잡)
  ↓
jQuery $.ajax() (쉬워짐)
  ↓
fetch API (현재 표준, Promise 기반)
  ↓
axios (fetch wrapper, 더 편리)
```

```javascript
// fetch (현재 표준)
async function searchProperties(zip) {
  const res = await fetch(`/api/properties?zip=${zip}`);
  const data = await res.json();
  updateUI(data);  // 페이지 새로고침 없이 UI 업데이트
}

// 버튼 클릭 시
document.getElementById('search').addEventListener('click', () => {
  searchProperties('07601');
});
```

---

## CORS (Cross-Origin Resource Sharing)

브라우저 보안 정책. 다른 도메인의 API 요청 차단.

```
newton-school.com 에서 → api.newtonrealty.org 호출
= 다른 Origin (도메인 다름) = CORS 차단

해결: 서버에서 허용 헤더 설정
Access-Control-Allow-Origin: https://newton-school.com
```

```javascript
// Node.js Express CORS 설정
const cors = require('cors');
app.use(cors({
  origin: ['https://newton-school.com', 'https://newtonrealty.org']
}));
```

---

## DNS / 도메인 흐름

```
브라우저: "newtonschool.net 로 가줘"
  ↓
DNS 서버 (Cloudflare): "이 IP 야: 76.76.21.21"
  ↓
브라우저: 76.76.21.21:443 TCP 연결
  ↓
TLS Handshake (HTTPS 인증서 교환)
  ↓
HTTP GET / 요청
  ↓
Vercel 서버: index.html 반환
```

Kenny 매핑: DNS = 전화번호부. 도메인 = 이름. IP = 실제 주소.

---

## ref

- topics/web-server.md (HTTP 메서드 상세)
- topics/event-handling.md (WebSocket 코드)
