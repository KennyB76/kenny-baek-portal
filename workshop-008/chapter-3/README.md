---
title: Chapter 3 — 소프트웨어 공학 / DevOps / Agile
workshop: 008-tech-stack-landscape
date: 2026-05-17
status: complete
---

# Chapter 3 — 소프트웨어 공학 / DevOps / Agile

> 깨봉 25 7-8 / 2026-05-17 / Kenny Study Notebook

---

## 목표

개발 방법론 전체 그림 잡기.
폭포수 vs Agile 차이 + CI/CD + MSA 개념 정착.

---

## 파일 맵

```
chapter-3/
   README.md              <- 이 파일
   glossary.md            <- 핵심 term + 정의 + Kenny 매핑
   agile-deep.md          <- Agile 심화 (스크럼 / 스프린트 / 백로그 / 스탠드업)
   cicd-pipeline.md       <- CI/CD 파이프라인 (GitHub Actions / 자동 빌드/테스트/배포)
   topics/
      waterfall-vs-agile.md   <- 폭포수 vs Agile 비교 (장단점 + 선택 기준)
      msa-monolith.md         <- 모놀리스 vs MSA (전환 시점 + 비용)
      devops-culture.md       <- DevOps = 문화 + 도구 (협업 + 자동화)
   index.html             <- visual interactive
```

---

## Kenny Anchor — DevOps → NewtonHQ

```
  백로그          ->  Kenny _plan/ 폴더 (구현 대기 목록)
  스프린트        ->  세션 단위 작업 (1 세션 = 1 스프린트)
  데일리 스크럼    ->  BBS / OneNote 일일 체크 (Kenny ↔ jarvis)
  CI/CD           ->  git push → GitHub Pages 자동 배포
  MSA             ->  도메인별 독립 sub-agent
  아키텍처 설계    ->  orchestrator/decisions/architecture.md
  코드 리뷰        ->  Kenny 결재 (위험 작업 검토)
```

---

## 5 Group (영상 기준)

| Group | 주제 |
|-------|------|
| A | 폭포수 vs Agile (프로젝트 유형별 선택) |
| B | Agile 실행 (스크럼 / 스프린트 / 백로그) |
| C | CI/CD 파이프라인 (자동화 흐름) |
| D | MSA vs 모놀리스 (아키텍처 선택) |
| E | DevOps 문화 (개발+운영 융합) |

---

## Kenny Deep Picks

| 영역 | 선택 | 이유 |
|------|------|------|
| CI/CD | GitHub Actions | 무료 / kenny-baek-portal 이미 사용 |
| 스크럼 | 경량 버전 | 1인 운영 = 데일리 스크럼 X / 스프린트+백로그만 |
| 아키텍처 패턴 | MSA (small scale) | 도메인별 분리 = NewtonHQ 현재 구조 |

---

## ref

- summary: `transcripts/Part3_소프트웨어공학_DevOps_Agile.summary.md`
- transcript: `transcripts/Part3_소프트웨어공학_DevOps_Agile.txt`
