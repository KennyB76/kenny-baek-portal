---
title: Glossary — Chapter 1 Developer Basics
date: 2026-05-16
---

# Glossary — 개발자 기본 지식

> term + 정의 + Kenny 매핑 (한 anchor 만)

---

## GROUP A — 자료 구조 + 데이터 형식

| Term | 정의 | Kenny 매핑 |
|------|------|------------|
| 자료 구조 (Data Structure) | 데이터를 효율적으로 저장·조회하는 방식 (array / list / map / tree / graph) | memory 카드 = hash map 구조. key → card |
| Array | 같은 타입 데이터를 순서대로 나열 | lessons[0], lessons[1]... |
| Map / Dictionary | key-value 쌍. 빠른 조회 | memory card: `feedback-xxx.md` = key → 본문 = value |
| JSON | JavaScript Object Notation. `{ "key": "value" }` 형식 텍스트 데이터 교환 포맷 | CLAUDE.md → @ref 구조 = JSON 개념과 같음 |
| XML | eXtensible Markup Language. `<tag>value</tag>`. JSON 이전 표준 | OneNote COM 응답 형식 |

---

## GROUP B — API 의 결

| Term | 정의 | Kenny 매핑 |
|------|------|------------|
| API | Application Programming Interface. 두 프로그램이 대화하는 규약 | jarvis 가 Google Calendar 부를 때 = API 호출 |
| OpenAPI | API 명세서 표준 (Swagger). 기계가 읽을 수 있는 API 설명서 | skill README 안 endpoint catalog 와 개념 같음 |
| REST API | HTTP 위에서 resource 중심으로 설계한 API 스타일 | `/GET students/kenny` = resource 접근 |
| RESTful API | REST 원칙을 충실히 따른 API. stateless / uniform interface | 모든 Claude MCP 가 RESTful 패턴 |
| Ajax | Asynchronous JavaScript And XML. 페이지 새로고침 없이 서버에서 데이터만 가져오기 | Google Sheets 실시간 업데이트 = Ajax |
| CRUD | Create / Read / Update / Delete. 데이터 4대 작업 | students DB: 학생 추가 / 조회 / 수정 / 삭제 |

---

## GROUP C — 코드 단위

| Term | 정의 | Kenny 매핑 |
|------|------|------------|
| 함수 (Function) | 입력 → 처리 → 출력. 재사용 가능한 코드 블록 | action flag = 함수 호출 |
| 클래스 (Class) | 객체를 만드는 설계도. 상태(attribute) + 행동(method) | skill 정의 = 클래스 |
| 객체 (Object) | 클래스로 만든 실체 | skill 호출 인스턴스 |
| 인스턴스 (Instance) | 클래스에서 생성된 개별 객체. Object 와 거의 동의어 | 각 sub-agent 실행 = 인스턴스 |
| 모듈 (Module) | 관련 함수·클래스를 묶은 파일 단위 | `.claude/skills/` 한 폴더 = 모듈 |
| 라이브러리 (Library) | 여러 모듈의 집합. 필요할 때 꺼내 씀 | npm 패키지, pip 패키지 |
| SDK | Software Development Kit. 특정 플랫폼 위에서 개발하는 도구 모음 | Google Maps SDK, Anthropic SDK |
| 컴포넌트 (Component) | UI 의 독립적 재사용 조각. React 핵심 단위 | React `<Card />`, `<Button />` |
| 프레임워크 (Framework) | 개발의 뼈대. 규칙과 구조를 제공 (라이브러리는 내가 부르고, 프레임워크는 나를 부름) | Next.js, Django, Spring |

---

## GROUP D — 통신 방식

| Term | 정의 | Kenny 매핑 |
|------|------|------------|
| 동기 (Synchronous) | 요청 → 응답 완전히 올 때까지 기다림. 순서 보장 | Kenny 가 결재 기다리는 상태 |
| 비동기 (Asynchronous) | 요청 던지고 → 다른 일 진행 → 응답 오면 처리 | jarvis 가 API 기다리는 동안 다른 sub 진행 |
| 폴링 (Polling) | 주기적으로 "도착했어?" 물어보는 방식 | 매 5분 Drive 변경 체크 |
| 이벤트 방식 (Event-driven) | 변경 발생 시 서버가 알려줌. 폴링보다 효율적 | WebSocket, webhook |
| Promise / async-await | JS 비동기 패턴. 콜백 지옥 해결 | Node.js 핵심 패턴 |
| asyncio | Python 비동기 라이브러리 | Python FastAPI 서버 |

---

## GROUP E — FE / BE 구분

| Term | 정의 | Kenny 매핑 |
|------|------|------------|
| Frontend | 사용자 화면. 브라우저에서 실행 (HTML / CSS / JS / React) | index.html, 학생 포탈 |
| Backend | 서버 로직 + DB. 사용자 눈에 안 보임 (Node / Python / Java) | jarvis sub-agent = 백엔드 |
| HTML | HyperText Markup Language. 페이지 뼈대 | index.html 구조 |
| CSS | Cascading Style Sheets. 스타일. CLAUDE.md cascade 와 이름 같음 | `--student: #6366f1` 변수 |
| JavaScript | 브라우저 + 서버(Node) 양쪽 실행 가능한 언어 | jarvis 스크립트 |

---

## ref

- chapter-1-pdf.md (본진)
- react.md / node-vs-python.md (Kenny deep)
