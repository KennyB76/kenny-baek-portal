---
title: Chapter 6 — 데이터베이스
workshop: 008-tech-stack-landscape
date: 2026-05-17
status: complete
---

# Chapter 6 — 데이터베이스

> 깨봉 25 7-8 / 2026-05-17 / Kenny Study Notebook

---

## 목표

데이터가 어떻게 저장되고 조회되는지 구조 잡기.
RDB / SQL / NoSQL / 인덱스 = 4 기둥.

---

## 파일 맵

```
chapter-6/
   README.md              <- 이 파일
   glossary.md            <- 핵심 term + 정의 + Kenny 매핑
   sql-basics.md          <- SQL 핵심 4동사 + JOIN + 집계함수
   nosql-compare.md       <- MongoDB / Redis / DynamoDB 비교
   topics/
      schema-design.md    <- 테이블 설계 (정규화 / FK / ERD)
      index-optimization.md <- 인덱스 전략 + 쿼리 최적화
      orm-patterns.md     <- ORM (Prisma / Sequelize / SQLAlchemy) 패턴
   index.html             <- visual interactive
```

---

## Kenny Anchor — DB → NewtonHQ

```
  테이블         ->  mind/memory/ 카드 (같은 형식 묶음)
  레코드 (행)    ->  메모리 카드 1개 (feedback-XXX.md)
  컬럼           ->  카드 YAML frontmatter 필드
  Primary Key    ->  파일명 (고유 식별자)
  Foreign Key    ->  @ref 링크 (다른 파일 참조)
  JOIN           ->  cascade @ref 읽기
  인덱스         ->  0_memory.md 허브 (빠른 탐색)
  트랜잭션       ->  Kenny 결재 (여러 변경 한 묶음 승인)
  ORM            ->  jarvis 자동 매핑 (파일 ↔ 메모리)
```

---

## 5 Group (영상 기준)

| Group | 주제 |
|-------|------|
| A | RDB 구조 (테이블 / 레코드 / 컬럼 / PK/FK) |
| B | SQL 4동사 (SELECT/INSERT/UPDATE/DELETE) |
| C | JOIN + 집계 (GROUP BY / COUNT / SUM) |
| D | NoSQL 선택 기준 (MongoDB / Redis) |
| E | 인덱스 + 트랜잭션 (성능 + 무결성) |

---

## Kenny Deep Picks

| 영역 | 선택 | 이유 |
|------|------|------|
| RDB | PostgreSQL | Supabase 기반. Newton 프로젝트 표준 |
| NoSQL | Redis | 캐시 레이어 / 세션 저장 |
| ORM | Prisma | TypeScript 친화적 / 자동 마이그레이션 |

---

## ref

- summary: `transcripts/Part6_데이터베이스.summary.md`
- transcript: `transcripts/Part6_데이터베이스.txt`
