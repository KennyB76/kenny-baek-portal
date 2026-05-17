---
title: Chapter 2 — API / 동기·비동기 / JSON
workshop: 008-tech-stack-landscape
date: 2026-05-17
status: complete
---

# Chapter 2 — API / 동기·비동기 / JSON

> 깨봉 25 7-8 / 2026-05-17 / Kenny Study Notebook

---

## 목표

시스템 간 통신 방식을 머릿속에 박는다.
API = 약속. 동기/비동기 = 흐름 제어. JSON = 데이터 언어.

---

## 파일 맵

```
chapter-2/
   README.md              <- 이 파일 (워크샵 개요 + anchor map)
   glossary.md            <- 핵심 term + 정의 + Kenny 매핑
   api-deep.md            <- REST API 심화 (HTTP 동사 / 상태코드 / 설계 원칙)
   async-patterns.md      <- 동기 vs 비동기 패턴 (callback / Promise / async-await)
   json-xml-compare.md    <- JSON vs XML 실제 코드 비교
   topics/
      rest-api.md         <- REST 설계 원칙 + CRUD 매핑
      polling-events.md   <- Polling vs WebSocket vs SSE
      fetch-axios.md      <- 브라우저 HTTP 클라이언트 실습
   index.html             <- visual interactive
```

---

## Kenny Anchor — API → NewtonHQ

```
  API call       ->  jarvis tool call
  GET            ->  Read tool (파일/메모리 읽기)
  POST/PUT       ->  Write/Edit tool (생성/수정)
  DELETE         ->  rm -rf (Kenny 결재 필요)
  비동기          ->  run_in_background=true
  JSON 응답      ->  jarvis final message
  Polling        ->  Kenny 가 주기적으로 확인하는 패턴
  API Gateway    ->  00_meta/orchestrator/ 진입점
```

---

## 5 Group (영상 기준)

| Group | 주제 |
|-------|------|
| A | REST API 4동사 (GET/POST/PUT/DELETE) |
| B | HTTP 상태코드 (200/404/500 의미) |
| C | 동기 vs 비동기 (은행 vs 카페 비유) |
| D | JSON 문법 + XML 비교 |
| E | Polling vs Event-driven (WebSocket/SSE) |

---

## Kenny Deep Picks

| 영역 | 선택 | 이유 |
|------|------|------|
| HTTP 클라이언트 | axios | Promise 기반 / 인터셉터 / 에러 처리 쉬움 |
| 비동기 패턴 | async/await | 코드 가독성 / try-catch 자연스러움 |
| API 문서 | OpenAPI/Swagger | 자동 생성 / Newton 프로젝트 표준 |

---

## ref

- summary: `transcripts/Part2_API_동기비동기_JSON.summary.md`
- transcript: `transcripts/Part2_API_동기비동기_JSON.txt`
