---
title: DB — SQL vs NoSQL
date: 2026-05-16
group: A + E
---

# DB — SQL vs NoSQL

---

## SQL (관계형 DB)

데이터를 테이블(행 + 열)로 저장. 관계(JOIN)로 연결.

```
+----+--------+----------+--------+
| id | name   | subject  | grade  |
+----+--------+----------+--------+
|  1 | Kenny  | Math     | A      |
|  2 | Evelyn | Calculus | A+     |
+----+--------+----------+--------+

students 테이블

+----+------------+----------+
| id | student_id | title    |
+----+------------+----------+
|  7 | 1          | React    |
|  8 | 2          | Calculus |
+----+------------+----------+

lessons 테이블 → student_id 로 JOIN
```

### 핵심 SQL

```sql
-- CREATE (데이터 삽입)
INSERT INTO students (name, subject) VALUES ('Kenny', 'Math');

-- READ (조회)
SELECT * FROM students WHERE grade = 'A';
SELECT s.name, l.title
FROM students s
JOIN lessons l ON s.id = l.student_id;

-- UPDATE (수정)
UPDATE students SET grade = 'A+' WHERE name = 'Kenny';

-- DELETE (삭제)
DELETE FROM students WHERE id = 3;
```

### 대표 DB

| DB | 특징 |
|----|------|
| MySQL | 가장 많이 쓰임. LAMP 스택 |
| PostgreSQL | 강력. JSON 지원. Newton 선택 |
| SQLite | 파일 하나. 서버 없음. 로컬 앱 |
| MariaDB | MySQL fork. 오픈소스 |

---

## NoSQL

테이블 없음. 다양한 형태로 저장.

### 문서형 (Document) — MongoDB

```json
{
  "_id": "kenny",
  "name": "Kenny Baek",
  "subject": "Math",
  "lessons": [
    { "id": 7, "title": "React", "date": "2026-05-16" },
    { "id": 8, "title": "Node", "date": "2026-05-17" }
  ]
}
```

학생 + 레슨을 한 문서에 중첩. JOIN 불필요.
스키마 유연 → 빠른 프로토타입.

### Key-Value — Redis

```
SET session:kenny "token_abc123"
GET session:kenny  →  "token_abc123"
EXPIRE session:kenny 3600  (1시간 후 만료)
```

캐시 / 세션 저장 / 실시간 랭킹.

---

## SQL vs NoSQL 선택

| 기준 | SQL | NoSQL |
|------|-----|-------|
| 데이터 관계 | 복잡한 관계 | 단순하거나 유연한 구조 |
| 일관성 | 강함 (ACID) | 유연 (eventual consistency) |
| 스케일 | 수직 확장 | 수평 확장 |
| 스키마 | 고정 | 유연 |
| 학습 곡선 | SQL 알면 쉬움 | DB 종류마다 다름 |
| Newton 선택 | PostgreSQL (Supabase) | Redis (캐시) |

---

## Kenny 매핑

```
SQL 테이블           ->  Excel 시트 (Kenny 친숙)
행 (Row)             ->  한 학생 레코드
열 (Column)          ->  속성 (이름 / 과목 / 성적)
JOIN                 ->  두 시트를 ID 로 연결
Primary Key          ->  학생 고유 ID (중복 X)
Foreign Key          ->  lessons.student_id → students.id
Index                ->  책의 색인. 빠른 조회
```
