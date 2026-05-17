---
title: "Part2 - API, 동기/비동기, JSON"
chapter: 2
duration: ~15min (estimated)
generated: 2026-05-17
---

# Part2 - API, 동기/비동기, JSON

## 5 손가락 요약

1. API = 약속된 데이터 교환 계약. 요청 형식 + 응답 형식 정의.
2. REST API 4동사 - GET(조회) / POST(생성) / PUT(수정) / DELETE(삭제).
3. 동기 = 줄서서 기다림 (은행 창구). 비동기 = 번호표 받고 자유 (카페 키오스크).
4. JSON = 현대 표준 데이터 포맷. key-value 쌍. XML 보다 간결.
5. Polling vs Event-driven - 주기적 체크 vs 이벤트 발생 시 push.

## 주요 용어 + 정의

| 용어 | 정의 |
|------|------|
| API | Application Programming Interface. 시스템 간 통신 규약 |
| REST | Representational State Transfer. URL + HTTP 동사 기반 API 설계 원칙 |
| GET | 서버에서 데이터 읽기. 부작용 없음 |
| POST | 서버에 새 데이터 생성 |
| PUT | 기존 데이터 수정 |
| DELETE | 데이터 삭제 |
| 동기 (Sync) | 요청 후 응답 올 때까지 블로킹. 순서 보장 |
| 비동기 (Async) | 요청 후 바로 다음 작업. 응답 오면 콜백/await |
| JSON | { "key": "value" } 형식. 경량 데이터 포맷 |
| XML | <tag>value</tag> 형식. 과거 표준. 무겁고 verbose |
| Polling | 클라이언트가 주기적으로 서버 체크 (능동) |
| Event-driven | 이벤트 발생 시 서버가 클라이언트에 push (수동 대기) |

## Kenny anchor (OOP -> NewtonHQ)

| IT 개념 | NewtonHQ 대응 |
|---------|---------------|
| API | jarvis tool call. sub-agent 간 통신 규약 |
| GET | Read tool (파일/메모리 읽기) |
| POST/PUT | Write/Edit tool (생성/수정) |
| 비동기 | background agent 실행 (run_in_background=true) |
| JSON 응답 | jarvis final message (구조화된 응답) |
| Polling | Kenny 가 주기적으로 확인하는 패턴 |

## Quiz (Kenny 자가 check)

1. REST API 4동사를 CRUD 와 매핑하라.
2. 동기/비동기를 은행 vs 카페 비유로 설명하라.
3. JSON 과 XML 의 실제 코드 형식 차이는?
4. Polling 이 비효율적인 이유와 event-driven 대안은?
5. 카카오 지도 API 를 쓸 때 내 앱은 어느 쪽 (provider vs consumer)?

## 옛 자리 ref

- source: `transcripts/Part2_API_동기비동기_JSON.txt`
- chapter folder: `workshops/008-tech-stack-landscape/chapter-2-api-async/`
