---
title: Chapter 7 — IT 인프라 / 아키텍처
workshop: 008-tech-stack-landscape
date: 2026-05-17
status: complete
---

# Chapter 7 — IT 인프라 / 아키텍처

> 깨봉 25 7-8 / 2026-05-17 / Kenny Study Notebook

---

## 목표

시스템 전체 그림 = 아키텍처. 3-Tier / MSA / 로드밸런서 / API Gateway = 4 기둥.

---

## 파일 맵

```
chapter-7/
   README.md              <- 이 파일
   glossary.md            <- 핵심 term + 정의 + Kenny 매핑
   three-tier.md          <- 3-Tier 아키텍처 (Web + WAS + DB) 심화
   msa-patterns.md        <- MSA 패턴 (API Gateway / 서비스 디스커버리 / Circuit Breaker)
   topics/
      load-balancer.md    <- 로드밸런서 + 오토스케일링 (수평/수직 확장)
      cdn-edge.md         <- CDN + 엣지 컴퓨팅 (Cloudflare Workers)
      message-queue.md    <- 메시지 큐 (Kafka / RabbitMQ) 비동기 통신
   index.html             <- visual interactive
```

---

## Kenny Anchor — 아키텍처 → NewtonHQ

```
  3-Tier         ->  Kenny(사람) / jarvis(WAS) / memory/(DB)
  로드밸런서     ->  병렬 sub-agent (task 분산)
  MSA            ->  도메인별 독립 sub (school/realty/soul)
  API Gateway    ->  00_meta/orchestrator/ (중앙 라우팅)
  CDN            ->  1_pinned.md (자주 쓰는 내용 캐시)
  메시지 큐      ->  BBS / OneNote (비동기 통신 버퍼)
  아키텍트 역할  ->  Kenny (설계+결재) / jarvis (구현+자율)
  Circuit Breaker -> 위험 작업 차단 룰 (SAFETY 섹션)
```

---

## 5 Group (영상 기준)

| Group | 주제 |
|-------|------|
| A | 3-Tier 아키텍처 (계층 분리 원칙) |
| B | MSA vs 모놀리스 (전환 기준) |
| C | 로드밸런서 + 오토스케일링 |
| D | API Gateway + 서비스 메시 |
| E | 메시지 큐 + 이벤트 드리븐 아키텍처 |

---

## Kenny Deep Picks

| 영역 | 선택 | 이유 |
|------|------|------|
| 아키텍처 패턴 | 3-Tier (현재) | 단순 명확. NewtonHQ 소규모에 적합 |
| 로드밸런서 | Cloudflare | 프론트 CDN + 로드밸런서 겸용 |
| 메시지 큐 | 불필요 (현재) | 규모 커지면 Kafka 검토 |

---

## ref

- summary: `transcripts/Part7_IT인프라_아키텍처.summary.md`
- transcript: `transcripts/Part7_IT인프라_아키텍처.txt`
