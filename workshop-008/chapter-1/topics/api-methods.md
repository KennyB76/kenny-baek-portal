---
title: API Methods — CRUD vs HTTP vs SQL 표
date: 2026-05-16
group: A + B
---

# API Methods — CRUD / HTTP / SQL 완전 대응표

> 같은 개념, 다른 층의 이름.

---

## 3-Layer 대응표

```
+----------+------------+------------------+------------------------+
| CRUD     | HTTP Method| SQL              | 설명                   |
+----------+------------+------------------+------------------------+
| Create   | POST       | INSERT INTO      | 새 데이터 만들기        |
| Read     | GET        | SELECT           | 데이터 읽기            |
| Update   | PUT/PATCH  | UPDATE SET       | 데이터 바꾸기           |
| Delete   | DELETE     | DELETE FROM      | 데이터 지우기           |
+----------+------------+------------------+------------------------+
```

---

## 구체적 예시 — Newton School 학생 DB

### Create (학생 등록)

```
HTTP:  POST /students
       Body: { "name": "Kenny", "subject": "Math" }
       Response: 201 Created, { "id": 1, "name": "Kenny" }

SQL:   INSERT INTO students (name, subject)
       VALUES ('Kenny', 'Math');
```

### Read (학생 조회)

```
HTTP:  GET /students           (전체 목록)
       GET /students/1         (ID로 한 명)
       GET /students?subject=Math  (필터)

SQL:   SELECT * FROM students;
       SELECT * FROM students WHERE id = 1;
       SELECT * FROM students WHERE subject = 'Math';
```

### Update (정보 수정)

```
HTTP:  PUT  /students/1  + 전체 body  (전체 교체)
       PATCH /students/1 + { "grade": "A+" }  (부분 수정)

SQL:   UPDATE students SET grade = 'A+' WHERE id = 1;
```

### Delete (학생 삭제)

```
HTTP:  DELETE /students/1

SQL:   DELETE FROM students WHERE id = 1;
```

---

## PUT vs PATCH

```
PUT   = 전체 교체
  PUT /students/1
  Body: { "name": "Kenny Baek", "subject": "Math", "grade": "A+", "active": true }
  → 빠진 필드는 null/초기화

PATCH = 일부만 변경
  PATCH /students/1
  Body: { "grade": "A+" }
  → grade 만 바꿈. 나머지 그대로
```

Kenny 선택: 보통 PATCH 를 씀. 필요한 것만 전송.

---

## REST URL 규칙

```
컬렉션:
  GET    /students          모든 학생
  POST   /students          새 학생 추가

단일 자원:
  GET    /students/{id}     특정 학생
  PUT    /students/{id}     전체 수정
  PATCH  /students/{id}     부분 수정
  DELETE /students/{id}     삭제

중첩 자원:
  GET    /students/{id}/lessons     학생의 레슨 목록
  POST   /students/{id}/lessons     레슨 추가
  GET    /students/{id}/lessons/{n} 특정 레슨
```

---

## GraphQL (REST 대안)

하나의 엔드포인트. 클라이언트가 필요한 것만 요청.

```graphql
# REST: 3번 호출
GET /students/1
GET /students/1/lessons
GET /students/1/grades

# GraphQL: 1번 호출
query {
  student(id: 1) {
    name
    lessons { title date }
    grades { subject score }
  }
}
```

Newton 현재 선택: REST (단순함). 복잡해지면 GraphQL 검토.

---

## ref

- topics/web-server.md (HTTP 메서드 기본)
- topics/db.md (SQL 기본)
