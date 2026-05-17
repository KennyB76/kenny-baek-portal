---
title: "Part8 - 클라우드 / IaaS / PaaS / SaaS"
chapter: 8
duration: ~20min (estimated)
generated: 2026-05-17
---

# Part8 - 클라우드 / IaaS / PaaS / SaaS

## 5 손가락 요약

1. 클라우드 = 가상화된 서버 임대 - 온프레미스(내 서버실) → 클라우드(AWS/Azure/GCP). 3개월 → 5분.
2. IaaS - Infrastructure as a Service. 서버(VM) 임대. AWS EC2. 내가 OS부터 직접 설치.
3. PaaS - Platform as a Service. OS/미들웨어 포함 플랫폼. Vercel/Heroku. 코드만 올리면 됨.
4. SaaS - Software as a Service. 완성된 서비스. Gmail, Slack, Notion. 쓰기만 하면 됨.
5. 클라우드 = AI 개발의 필수 인프라 - 서버리스 + 오토스케일링. 스타트업 초기 비용 혁신.

## 주요 용어 + 정의

| 용어 | 정의 |
|------|------|
| 온프레미스 | 자체 서버실에 물리 서버 설치/운영. 구매→IDC 입고 3개월 |
| 클라우드 | 인터넷으로 서버 자원 임대. 가상화 기술 기반. 5분 준비 |
| 가상화 | 물리 서버 1대를 여러 가상 서버로 분할. VM(Virtual Machine) |
| IaaS | 인프라 임대. VM + 네트워크 + 스토리지. AWS EC2 / GCP Compute |
| PaaS | 플랫폼 임대. 배포 파이프라인 포함. Vercel / Railway / Firebase |
| SaaS | 완성 소프트웨어 서비스. Wave / Slack / Google Workspace |
| 서버리스 | 서버 관리 없이 함수 단위 실행. AWS Lambda / Cloudflare Workers |
| 오토스케일링 | 트래픽 증가 시 서버 자동 추가. 클라우드 핵심 장점 |
| 용량산정 | 온프레미스 시대 서버 크기 결정 작업. 수개월 소요. 클라우드로 폐기 |
| CapEx → OpEx | 자본지출(서버 구매) → 운영지출(사용량 과금). 재무 모델 변화 |

## Kenny anchor (NewtonHQ 대응)

| 클라우드 개념 | NewtonHQ 대응 |
|--------------|---------------|
| IaaS | Tailscale 연결 homedesktop (내 서버 직접 관리) |
| PaaS | GitHub Pages (코드 push → 자동 배포) |
| SaaS | Wave / Google Workspace / Claude API |
| 서버리스 | sub-agent (호출 시만 실행, 항상 켜있지 않음) |
| 오토스케일링 | 병렬 sub-agent 추가 (task 증가 시 자동 분산) |
| Sovereign Cloud | Newton 3-2-1 비전 (Immich/NAS/VPS 자체 운영) |

## Quiz (Kenny 자가 check)

1. IaaS / PaaS / SaaS 를 피자 비유 (직접 만들기 / 배달 / 식당)로 설명하라.
2. 스타트업이 온프레미스 대신 클라우드를 쓰는 재무적 이유는?
3. 서버리스 함수가 항상 켜있는 서버보다 저렴한 이유는?
4. 클라우드에서 오토스케일링이 없으면 블랙프라이데이에 어떤 일이 생기는가?
5. AWS / Azure / GCP 중 AI 스타트업 선택 기준은? (Kenny 관점)

## 옛 자리 ref

- source: `transcripts/Part8_클라우드_IaaS_PaaS_SaaS.txt`
- chapter folder: `chapter-8/`
