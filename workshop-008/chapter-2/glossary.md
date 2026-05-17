---
title: Chapter 2 Glossary — API / 동기·비동기 / JSON
---

# Chapter 2 핵심 용어

| 용어 | 정의 | Kenny 비유 |
|------|------|-----------|
| API | Application Programming Interface. 시스템 간 통신 규약 | 식당 주문서 (웨이터 = API) |
| REST | Representational State Transfer. URL + HTTP 동사 기반 API | 메뉴판 + 주문 방식 규칙 |
| GET | 서버에서 데이터 읽기. 부작용 없음 | 메뉴판 보기 |
| POST | 새 데이터 생성 | 새 메뉴 추가 요청 |
| PUT | 기존 데이터 전체 수정 | 메뉴 통째로 교체 |
| PATCH | 기존 데이터 일부 수정 | 메뉴 가격만 변경 |
| DELETE | 데이터 삭제 | 메뉴 삭제 |
| 동기 (Sync) | 요청 후 응답까지 블로킹. 순서 보장 | 은행 창구 번호표 (줄서기) |
| 비동기 (Async) | 요청 후 바로 다음 작업. 응답 오면 처리 | 카페 키오스크 번호표 |
| Callback | 비동기 완료 후 실행할 함수 등록 | "다 되면 전화해" |
| Promise | 비동기 결과를 나중에 처리하는 객체 | 영수증 (나중에 교환) |
| async/await | Promise 를 동기처럼 보이게 작성하는 문법 | 직원이 줄서서 대신 기다려줌 |
| JSON | { "key": "value" }. 현대 데이터 표준 포맷 | 영어 (국제 공용어) |
| XML | <tag>value</tag>. 과거 표준. verbose | 한자 (복잡하고 무거움) |
| Polling | 클라이언트가 주기적으로 서버 체크 | 5분마다 "밥 됐어?" |
| WebSocket | 양방향 실시간 통신. 연결 유지 | 전화 통화 (끊지 않음) |
| SSE | Server-Sent Events. 서버 → 클라이언트 단방향 스트림 | 라디오 방송 |
| API Key | API 접근 인증 토큰. 신원 증명 | 회원 카드 |
| Rate Limit | API 호출 횟수 제한 | 뷔페 접시 수 제한 |
| OpenAPI | API 문서화 표준 (Swagger) | 메뉴판 표준 양식 |
