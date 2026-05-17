---
title: Web Server — HTTP / REST / CRUD
date: 2026-05-16
group: B + E
---

# Web Server — HTTP / REST / CRUD

---

## HTTP 기본

HyperText Transfer Protocol. 클라이언트 ↔ 서버 통신 규약.

```
클라이언트 (브라우저 / app)
    |
    |  HTTP Request
    |  method: GET
    |  url: /students/1
    |  headers: { Authorization: Bearer token }
    |  body: (GET 은 없음)
    v
서버 (Node / Python / Java)
    |
    |  HTTP Response
    |  status: 200 OK
    |  headers: { Content-Type: application/json }
    |  body: { "id": 1, "name": "Kenny" }
    v
클라이언트
```

### HTTP 메서드

| Method | 목적 | 멱등성 | 예시 |
|--------|------|--------|------|
| GET | 조회 | Y | `GET /students` |
| POST | 생성 | N | `POST /students` + body |
| PUT | 전체 수정 | Y | `PUT /students/1` + body |
| PATCH | 부분 수정 | Y | `PATCH /students/1` + 변경 필드만 |
| DELETE | 삭제 | Y | `DELETE /students/1` |

> 멱등성 (Idempotent): 같은 요청 여러 번 = 결과 같음.

### HTTP 상태 코드

```
2xx  성공
  200  OK
  201  Created (POST 성공)
  204  No Content (DELETE 성공)

3xx  리다이렉트
  301  Moved Permanently
  302  Found (임시 이동)

4xx  클라이언트 에러
  400  Bad Request (잘못된 요청)
  401  Unauthorized (인증 필요)
  403  Forbidden (권한 없음)
  404  Not Found
  429  Too Many Requests

5xx  서버 에러
  500  Internal Server Error
  503  Service Unavailable
```

---

## REST API

Representational State Transfer. HTTP 위 resource 중심 API 설계 스타일.

### 핵심 원칙

```
1. Stateless     — 서버는 클라이언트 상태 저장 X
                   매 요청에 필요한 정보 전부 포함
2. Uniform Interface — resource 는 URL 로 식별
3. Client-Server — 분리 (FE/BE 독립)
4. Cacheable     — GET 응답은 캐싱 가능
```

### URL 설계 패턴

```
컬렉션:       /students          (복수형)
단일 자원:    /students/{id}
하위 자원:    /students/{id}/lessons
              /students/kenny/lessons/7

동사 X, 명사 O:
  X  /getStudents
  X  /createStudent
  O  GET  /students
  O  POST /students
```

---

## CRUD vs HTTP 메서드 매핑

```
+--------+------------+------------------+
| CRUD   | HTTP       | SQL              |
+--------+------------+------------------+
| Create | POST       | INSERT INTO      |
| Read   | GET        | SELECT           |
| Update | PUT/PATCH  | UPDATE SET       |
| Delete | DELETE     | DELETE FROM      |
+--------+------------+------------------+
```

> CRUD = 데이터 4대 작업. 어느 층에서나 같은 개념 다른 이름.

Kenny 매핑:
- POST /students = 새 학생 등록 (INSERT INTO students)
- GET /students/kenny = kenny 조회 (SELECT * FROM students WHERE id='kenny')
- PUT /students/kenny = kenny 정보 전체 수정
- DELETE /students/kenny = kenny 삭제

---

## ref

- api-methods.md (CRUD vs HTTP vs SQL 표 확장)
- topics/networking.md (HTTP vs WebSocket)
