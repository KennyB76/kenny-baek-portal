---
title: Chapter 8 — 클라우드 / IaaS / PaaS / SaaS
workshop: 008-tech-stack-landscape
date: 2026-05-17
status: complete
---

# Chapter 8 — 클라우드 / IaaS / PaaS / SaaS

> 깨봉 25 7-8 / 2026-05-17 / Kenny Study Notebook

---

## 목표

클라우드가 왜 대세인지, 서비스 유형 3가지 구분, Newton Sovereign Cloud 비전 연결.

---

## 파일 맵

```
chapter-8/
   README.md              <- 이 파일
   glossary.md            <- 핵심 term + 정의 + Kenny 매핑
   iaas-paas-saas.md      <- 3가지 서비스 모델 심화 + 비교표
   serverless-edge.md     <- 서버리스 + 엣지 컴퓨팅 (Lambda / Cloudflare Workers)
   topics/
      aws-gcp-azure.md    <- 3대 클라우드 비교 (Kenny 관점)
      docker-kubernetes.md <- 컨테이너 + 오케스트레이션 기초
      sovereign-cloud.md  <- Newton Sovereign Cloud 비전 (Immich/NAS/VPS)
   index.html             <- visual interactive
```

---

## Kenny Anchor — 클라우드 → NewtonHQ

```
  IaaS           ->  Tailscale homedesktop (내 서버 직접 관리)
  PaaS           ->  GitHub Pages (코드 push → 자동 배포)
  SaaS           ->  Wave / Google Workspace / Claude API
  서버리스        ->  sub-agent (호출 시만 실행)
  오토스케일링    ->  병렬 sub-agent (task 증가 시 분산)
  Docker         ->  Immich + ComfyUI 현재 운영 중
  Sovereign Cloud -> Newton 3-2-1 비전 (2026 Phase 2)
  CapEx → OpEx   ->  Kenny = 사용량 기반 AI API 과금
```

---

## 5 Group (영상 기준)

| Group | 주제 |
|-------|------|
| A | 클라우드 = 가상화 + 온디맨드 서버 |
| B | IaaS / PaaS / SaaS 차이 (피자 비유) |
| C | 서버리스 + 오토스케일링 |
| D | Docker + Kubernetes 기초 |
| E | Newton Sovereign Cloud 비전 |

---

## Kenny Deep Picks

| 영역 | 선택 | 이유 |
|------|------|------|
| PaaS | GitHub Pages / Vercel | 무료 / 간단 / Newton 현재 사용 |
| IaaS | VPS (미래) | Phase 2 self-cloud (newtonai.org) |
| 컨테이너 | Docker | Immich + ComfyUI 이미 운영 중 |

---

## ref

- summary: `transcripts/Part8_클라우드_IaaS_PaaS_SaaS.summary.md`
- transcript: `transcripts/Part8_클라우드_IaaS_PaaS_SaaS.txt`
