---
title: "Part6 - 데이터베이스"
chapter: 6
duration: ~20min (estimated)
generated: 2026-05-17
---

# Part6 - 데이터베이스

## 5 손가락 요약

1. RDB = 표 (엑셀과 같은 구조) - 테이블 + 행(레코드) + 열(컬럼). 관계형 DB 핵심 구조.
2. SQL 4동사 - SELECT (조회) / INSERT (추가) / UPDATE (수정) / DELETE (삭제). DB 의 REST API.
3. NoSQL = 비정형 - JSON 문서, 키-값, 그래프 형식. MongoDB 대표. 유연하지만 트랜잭션 약함.
4. 인덱스 - DB 검색 속도 10-100배 향상. 책의 색인처럼 미리 만들어둔 주소록.
5. 정규화 vs 비정규화 - 중복 제거 vs 읽기 성능. 서비스 규모에 따라 선택.

## 주요 용어 + 정의

| 용어 | 정의 |
|------|------|
| RDB | Relational Database. 테이블 구조 + 관계. MySQL, PostgreSQL, Oracle |
| NoSQL | Not Only SQL. 비정형 데이터 저장. MongoDB, Redis, DynamoDB |
| 테이블 | 행 + 열로 구성된 데이터 단위. 엑셀 시트와 유사 |
| 레코드 (행) | 테이블의 가로 줄 하나 = 데이터 1개 |
| 컬럼 (열) | 테이블의 세로 항목. 이름/나이/이메일 등 속성 |
| Primary Key | 레코드 식별 고유값. 중복 불가. 자동증가(auto increment) |
| Foreign Key | 다른 테이블의 PK 참조. 테이블 간 관계 연결 |
| JOIN | 여러 테이블 합쳐 조회. 회원+주문+상품 한 번에 가져오기 |
| 인덱스 | 컬럼 기반 검색 주소록. SELECT 속도 향상 / INSERT 속도 감소 |
| 트랜잭션 | 여러 쿼리를 한 묶음으로. 전체 성공 or 전체 롤백 (ACID) |
| ORM | Object Relational Mapping. 코드 객체 ↔ DB 테이블 자동 변환 |

## Kenny anchor (NewtonHQ 대응)

| DB 개념 | NewtonHQ 대응 |
|---------|---------------|
| 테이블 | mind/memory/ 카드 (같은 형식의 데이터 묶음) |
| 레코드 | 메모리 카드 1개 (예: feedback-XXX.md) |
| 컬럼 | 카드 YAML frontmatter 필드 |
| Primary Key | 파일명 (고유 식별자) |
| Foreign Key | @ref 링크 (다른 파일 참조) |
| JOIN | cascade @ref 읽기 (여러 카드 합쳐 컨텍스트) |
| 인덱스 | 0_memory.md (허브 → 빠른 탐색) |
| 트랜잭션 | Kenny 결재 (여러 변경 한 묶음 승인) |

## Quiz (Kenny 자가 check)

1. 회원/상품/주문 3개 테이블을 설계할 때 Foreign Key 연결을 그려라.
2. 인덱스가 SELECT 를 빠르게 하지만 INSERT 를 느리게 하는 이유는?
3. NoSQL 을 선택하는 상황과 RDB 를 선택하는 상황 각각 예시를 들어라.
4. 트랜잭션이 없으면 계좌 이체 시 어떤 문제가 생기는가?
5. Supabase vs Firebase 의 차이 (RDB vs NoSQL 관점)?

## 옛 자리 ref

- source: `transcripts/Part6_데이터베이스.txt`
- chapter folder: `chapter-6/`
