---
title: React — FE Deep
date: 2026-05-16
pick: Kenny FE
---

# React — FE Deep

> Kenny Pick: 실제로 가장 많이 쓰이는 FE 라이브러리.
> 객체지향 anchor 연결 = 이 파일 핵심.

---

## 1. 구조

### SPA (Single Page Application)

브라우저가 처음에 HTML 하나를 받고 — 이후 페이지 전환 없이 JavaScript 가 내용을 교체.
새로고침 없음. Gmail, Google Docs, 학생 포탈이 SPA 패턴.

```
전통 방식:  URL 클릭 → 서버 → 새 HTML → 브라우저 full reload
SPA:        URL 변경 → JS 가 필요한 부분만 교체 → 부드럽게
```

### Component Tree

모든 UI = 컴포넌트의 트리. 부모가 자식을 포함.

```
<App>
  <Nav />
  <Main>
    <StudentCard student={kenny} />
    <StudentCard student={evelyn} />
  </Main>
  <Footer />
</App>
```

Kenny 매핑: `<App>` = NewtonHQ / `<StudentCard>` = 학생 profile card = skill instance.

### Virtual DOM

React 는 실제 DOM 대신 메모리 안 가상 DOM 을 유지.
변경 발생 시 → virtual DOM 비교 (diff) → 실제로 바뀐 부분만 업데이트.

```
상태 변경 →  새 Virtual DOM 생성
            → 이전 Virtual DOM 과 비교 (Reconciliation)
            → 차이만 실제 DOM 에 적용
```

### JSX

JavaScript 안에 HTML 처럼 쓰는 문법. 브라우저는 모름 → Babel 이 변환.

```jsx
// JSX
const card = <div className="card">{student.name}</div>;

// 컴파일 후 (실제 JS)
const card = React.createElement("div", {className: "card"}, student.name);
```

---

## 2. Hook

> React 16.8 (2019) 이후 함수형 컴포넌트의 핵심.
> Class 없이 상태와 생명주기를 관리.

### useState — 상태 관리

```jsx
import { useState } from 'react';

function Counter() {
  const [count, setCount] = useState(0);   // 초기값 0

  return (
    <div>
      <p>Count: {count}</p>
      <button onClick={() => setCount(count + 1)}>+1</button>
    </div>
  );
}
```

Kenny 매핑: `count` = 현재 상태 / `setCount` = 상태 변경 함수 (action flag 같음).

### useEffect — 사이드 이펙트

컴포넌트 렌더링 후 실행. API 호출, 타이머, 구독 등.

```jsx
import { useState, useEffect } from 'react';

function StudentList() {
  const [students, setStudents] = useState([]);

  useEffect(() => {
    // 컴포넌트 마운트 시 실행
    fetch('/api/students')
      .then(r => r.json())
      .then(data => setStudents(data));

    // cleanup (언마운트 시)
    return () => { /* 구독 해제 등 */ };
  }, []);  // [] = 최초 1회만

  return <ul>{students.map(s => <li key={s.id}>{s.name}</li>)}</ul>;
}
```

### useContext — 전역 상태 공유

Props 없이 컴포넌트 트리 어디서든 값 접근.

```jsx
const ThemeContext = React.createContext('dark');

// Provider (최상단)
<ThemeContext.Provider value="dark">
  <App />
</ThemeContext.Provider>

// Consumer (어느 자식이든)
function Button() {
  const theme = useContext(ThemeContext);
  return <button className={theme}>Click</button>;
}
```

Kenny 매핑: `ThemeContext` = 전역 memory. `useContext` = `@ref` 로 어디서든 읽기.

### useReducer — 복잡한 상태 로직

복잡한 상태 전환을 action 으로 관리. Redux 의 작은 버전.

```jsx
function reducer(state, action) {
  switch (action.type) {
    case 'increment': return { count: state.count + 1 };
    case 'reset':     return { count: 0 };
    default:          return state;
  }
}

function Counter() {
  const [state, dispatch] = useReducer(reducer, { count: 0 });
  return (
    <div>
      <p>{state.count}</p>
      <button onClick={() => dispatch({ type: 'increment' })}>+1</button>
      <button onClick={() => dispatch({ type: 'reset' })}>Reset</button>
    </div>
  );
}
```

### useMemo / useCallback — 성능 최적화

```jsx
// useMemo: 값 계산 캐싱
const sortedList = useMemo(
  () => students.sort((a, b) => a.name.localeCompare(b.name)),
  [students]  // students 바뀔 때만 재계산
);

// useCallback: 함수 캐싱 (자식 컴포넌트 불필요한 리렌더 방지)
const handleClick = useCallback(() => {
  console.log(student.id);
}, [student.id]);
```

### useRef — DOM 직접 접근 / 값 유지

```jsx
function InputFocus() {
  const inputRef = useRef(null);

  const focusInput = () => inputRef.current.focus();

  return (
    <div>
      <input ref={inputRef} type="text" />
      <button onClick={focusInput}>Focus</button>
    </div>
  );
}
```

### Custom Hook — 로직 재사용

`use` 로 시작하는 함수. 여러 컴포넌트가 같은 로직을 공유.

```jsx
// useFetch.js — custom hook
function useFetch(url) {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch(url)
      .then(r => r.json())
      .then(d => { setData(d); setLoading(false); });
  }, [url]);

  return { data, loading };
}

// 사용
function StudentPage() {
  const { data, loading } = useFetch('/api/students/kenny');
  if (loading) return <p>Loading...</p>;
  return <div>{data.name}</div>;
}
```

Kenny 매핑: Custom hook = 재사용 가능한 skill 패턴.

---

## 3. 성질

### 일방향 데이터 흐름 (Unidirectional Data Flow)

```
부모 (상태 보유)
   ↓  Props 전달 (down)
자식 컴포넌트
   ↑  Event 발생 (up) → 부모 상태 변경 함수 호출
```

자식이 직접 부모 상태를 바꾸지 못함. 이벤트를 올려서 부모가 바꿈.
Kenny 매핑: parent (Kenny) → sub (javis) props / sub → parent event 패턴과 같음.

### Immutable State

상태를 직접 수정 금지. 새 객체를 만들어 교체.

```jsx
// 금지
state.students.push(newStudent);

// 올바른 방법
setStudents([...students, newStudent]);
```

### Composition > Inheritance

React 는 상속 대신 조합을 선호. 작은 컴포넌트를 합쳐 큰 컴포넌트 만듦.

```jsx
// Inheritance 방식 (React 에서 지양)
class SpecialCard extends Card { ... }

// Composition 방식 (React 권장)
function SpecialCard({ children }) {
  return (
    <Card>
      <SpecialBadge />
      {children}
    </Card>
  );
}
```

Kenny 매핑: `CLAUDE.md cascade` = composition 패턴. 상속이 아니라 @ref 조합.

### Declarative (선언적)

무엇을 할지 선언. 어떻게 할지는 React 가 결정.

```jsx
// Imperative (명령형)
document.getElementById('count').textContent = count;

// Declarative (선언형 — React)
return <div>{count}</div>;  // 상태만 정의. DOM 조작은 React 가
```

---

## 4. 생태계

| 카테고리 | 대표 도구 | 한 줄 |
|----------|-----------|-------|
| Router | React Router | URL ↔ 컴포넌트 연결 |
| State | Context API / Redux / Zustand | 전역 상태 관리 (규모 순) |
| Form | React Hook Form | 폼 유효성 + 상태 관리 |
| Style | Tailwind CSS / Styled Components | 유틸리티 클래스 / CSS-in-JS |
| Build | Vite | 번들러. dev 서버 빠름 |
| Meta-framework | Next.js | SSR / SSG / API routes 통합 |
| Test | Vitest / Testing Library | 컴포넌트 단위 테스트 |

Kenny 선택: **Next.js + Tailwind** (07_hub/HQ_Web_Studio 스택).

---

## 5. vs Vue / Angular 한 줄 표

| | React | Vue | Angular |
|---|---|---|---|
| 만든 곳 | Meta | Evan You (개인) | Google |
| 타입 | 라이브러리 | 점진적 프레임워크 | 완전 프레임워크 |
| 학습 곡선 | 중간 | 쉬움 | 어려움 |
| 데이터 흐름 | 일방향 | 양방향 가능 | 양방향 |
| 주요 사용처 | Facebook / Instagram / 학생 포탈 | 중소 SPA | 대기업 엔터프라이즈 |
| Kenny 선택 | 선택 | 비교만 | 비교만 |

---

## 6. Kenny 자리 매핑 (OOP → NewtonHQ)

```
Class            ->  skill 정의
                     (class Skill { constructor(name) {...} })

Object/Instance  ->  skill 호출 시 발화된 자리
                     (const mySkill = new Skill("react"))

Inheritance      ->  CLAUDE.md cascade
                     (class SubAgent extends JavisBase {...})

Method           ->  action flag
                     (mySkill.run("-on"))

Polymorphism     ->  /j -on -off -team 변종
                     (같은 메서드, 다른 동작)

Encapsulation    ->  mind/memory cascade hub
                     (외부에서 직접 접근 금지. getter/setter)

Module           ->  .claude/skills/ 한 폴더
                     (import { reactSkill } from './skills/react')
```

---

## ref

- chapter-1-pdf.md § OOP
- node-vs-python.md (BE 짝)
- code-snippets.md (실제 코드 비교)
