---
title: Languages Compare — Vue / Angular / Java / Go / Rust
date: 2026-05-16
---

# Languages Compare

> Kenny deep picks = React / Node / Python (별도 파일).
> 이 파일 = 비교용 한 줄.

---

## FE — React 외

| 언어/프레임워크 | 한 줄 | Kenny 관계 |
|---------------|-------|------------|
| **Vue.js** | 배우기 가장 쉬운 FE 프레임워크. 양방향 데이터 바인딩. 중소 SPA. | 비교용 |
| **Angular** | Google 의 완전 프레임워크. TypeScript 필수. 대기업 엔터프라이즈. 학습곡선 높음. | 비교용 |
| **Svelte** | 컴파일 시점에 JS 변환. Runtime 없음. 빠름. 생태계 작음. | 알아두기 |
| **Next.js** | React 기반 meta-framework. SSR / SSG / API routes. Kenny 선택 스택. | 선택 |

---

## BE — Node / Python 외

| 언어 | 한 줄 | 주요 사용처 | Kenny 관계 |
|------|-------|------------|------------|
| **Java** | 강한 타입. JVM. Spring Boot = 엔터프라이즈 표준. 느리지만 안정적. | 대기업 백엔드 / Android | 비교용 |
| **Go (Golang)** | Google 설계. 컴파일 빠름. 동시성 native. 클라우드 인프라 표준 (Docker, K8s 다 Go). | 시스템 / DevOps 도구 | 알아두기 |
| **Rust** | 메모리 안전. 가비지 컬렉터 없음. C/C++ 대체 후보. WebAssembly. | 시스템 / 임베디드 / 고성능 | 먼 미래 |
| **PHP** | 웹 서버 역사 최장. WordPress / Laravel. 레거시 많음. | CMS / 소규모 웹 | 알아두기 (레거시) |
| **Ruby** | 문법 우아함. Rails = 스타트업 초기 선택. 속도 약함. | 스타트업 MVP | 알아두기 |
| **C#** | Microsoft .NET. TypeScript 와 개념 유사. Unity 스크립트. | Microsoft 생태계 | 비교용 |

---

## DB

| | 한 줄 |
|---|---|
| **MySQL** | 관계형 DB. 테이블 + 행 + 열. SQL 사용. | 
| **PostgreSQL** | MySQL 보다 강력한 오픈소스 관계형. JSON 지원도 좋음. Newton 선택. |
| **MongoDB** | NoSQL. JSON 문서 형태 저장. 스키마 유연. 빠른 프로토타입. |
| **SQLite** | 파일 하나 = DB. 서버 불필요. 소규모 / 로컬 앱. |
| **Redis** | In-memory 캐시 + 세션 저장. 속도 극강. |
| **Supabase** | PostgreSQL 위 오픈소스 Firebase. Newton Web Studio 선택. |

---

## 언어 계보 (간단)

```
C (1972)
  ├─ C++ (1985) — 객체지향 추가
  │    └─ Java (1995) — JVM / 플랫폼 독립
  │         └─ Kotlin (2011) — Android 현대 언어
  ├─ Python (1991) — 간결함 / 데이터
  ├─ JavaScript (1995) — 브라우저 / Node
  │    └─ TypeScript (2012) — JS + 타입
  └─ Go (2009) — Google / 동시성
  └─ Rust (2010) — Mozilla / 메모리 안전
```

---

## Kenny 스택 결정 (현재)

```
FE:   React (via Next.js)
BE:   Node.js (Next.js API routes) + Python (AI/Data)
DB:   PostgreSQL via Supabase
Host: Vercel (FE) + VPS (AI/scraping)
```
