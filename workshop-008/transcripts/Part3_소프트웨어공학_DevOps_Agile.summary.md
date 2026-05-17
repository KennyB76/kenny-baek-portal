---
title: "Part3 - 소프트웨어 공학 / DevOps / Agile"
chapter: 3
duration: ~25min (estimated)
generated: 2026-05-17
---

# Part3 - 소프트웨어 공학 / DevOps / Agile

## 5 손가락 요약

1. 폭포수 vs Agile - 폭포수 = 한 방향 단계. 뒤집기 고비용. Agile = 짧은 스프린트 반복. 서비스 회사 기본.
2. 소프트웨어 아키텍처 = 시스템 설계도. 건축 설계도와 같은 역할. 뼈대 먼저.
3. 스프린트 사이클 - 백로그 → 기획 → 개발 → 테스트 → 배포. 2-4주 반복.
4. MSA vs 모노리스 - 모노리스 = 하나의 덩어리. MSA = 기능별 분리 서비스. 확장성 차이.
5. CI/CD 파이프라인 - 코드 push → 자동 빌드/테스트 → 자동 배포. DevOps 핵심 도구.

## 주요 용어 + 정의

| 용어 | 정의 |
|------|------|
| 폭포수 (Waterfall) | 기획→분석→설계→개발→테스트 단방향 흐름. 대형 SI 프로젝트 표준 |
| Agile | 짧은 스프린트 반복 개발. 서비스 회사 기본 방법론 |
| Sprint | Agile 에서 2-4주 단위 개발 사이클 |
| 백로그 (Backlog) | 구현할 기능 목록. 폭포수의 요구사항 대신 쓰는 Agile 표현 |
| 스크럼 (Scrum) | Agile 실행 프레임워크. 데일리 스크럼(짧은 아침 공유) 포함 |
| MSA | Microservice Architecture. 기능별 독립 서비스로 분리 |
| 모노리스 | 모든 기능이 단일 코드베이스. 초기 개발 빠름 / 확장 어려움 |
| CI | Continuous Integration. 코드 merge 시 자동 빌드+테스트 |
| CD | Continuous Deployment. 테스트 통과 시 자동 배포 |
| DevOps | 개발(Dev) + 운영(Ops) 융합 문화. CI/CD 파이프라인 운영 |

## Kenny anchor (NewtonHQ 대응)

| 소프트웨어 공학 개념 | NewtonHQ 대응 |
|---------------------|---------------|
| 백로그 | Kenny _plan/ 폴더 (구현 대기 목록) |
| 스프린트 | 세션 단위 작업 (한 세션 = 1 스프린트) |
| CI/CD | git commit → Pages 자동 배포 (kenny-baek-portal) |
| MSA | sub-agent 위임 패턴 (도메인별 독립 jarvis) |
| 아키텍처 설계 | 00_meta/orchestrator/decisions/architecture.md |
| 데일리 스크럼 | BBS / OneNote 채널 (Kenny ↔ jarvis 일일 체크) |

## Quiz (Kenny 자가 check)

1. 폭포수와 Agile 의 핵심 차이를 납기 vs 배포 관점으로 설명하라.
2. 스프린트 안에 기획/개발/테스트가 다 들어가는 이유는?
3. MSA 전환 시 비용이 큰 이유 (통신 오버헤드 + 복잡성)?
4. CI 와 CD 각각 없을 때 생기는 문제는?
5. 데일리 스크럼이 2시간짜리 회의로 변질되는 이유 (문화 충돌)?

## 옛 자리 ref

- source: `transcripts/Part3_소프트웨어공학_DevOps_Agile.txt`
- chapter folder: `chapter-3/`
