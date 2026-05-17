---
title: "Part7 - IT 인프라 / 아키텍처"
chapter: 7
duration: ~20min (estimated)
generated: 2026-05-17
---

# Part7 - IT 인프라 / 아키텍처

## 5 손가락 요약

1. 아키텍처 = 설계도 - 건축물 설계와 같음. 시스템 구성을 어떻게 할지 결정하는 큰 그림.
2. 3-Tier 구조 - 프레젠테이션(Web) + 비즈니스(WAS) + 퍼시스턴스(DB). 현대 서비스 기본 구성.
3. 모놀리스 → MSA 전환 - 하나의 덩어리에서 기능별 독립 서비스로. 확장성↑ 복잡성↑.
4. AI 시대 아키텍처 - 사람이 구조 설계 / AI 가 개발+구축. 시니어 개발자 = 아키텍트 역할.
5. 로드밸런서 + 스케일링 - 트래픽 분산. 수평확장(서버 추가) vs 수직확장(서버 업그레이드).

## 주요 용어 + 정의

| 용어 | 정의 |
|------|------|
| 아키텍처 | 시스템 전체 구성 설계. 기술 선택 + 연결 방식 결정 |
| 3-Tier | Web(화면) + WAS(로직) + DB(데이터) 3계층 분리 구조 |
| 로드밸런서 | 여러 서버에 트래픽 균등 분배. 단일 장애점 제거 |
| 수평 확장 | 서버 대수 늘리기. 클라우드에서 수분 내 가능 |
| 수직 확장 | 서버 사양 올리기 (RAM/CPU). 한계 존재 |
| CDN | Content Delivery Network. 전 세계 엣지 서버에 정적 파일 캐시 |
| 리버스 프록시 | 클라이언트 → 프록시 → 서버. Nginx 대표적 사용 사례 |
| 메시지 큐 | 서비스 간 비동기 통신. Kafka, RabbitMQ. 트래픽 버퍼 역할 |
| 마이크로서비스 | 기능별 독립 서비스 분리. 독립 배포 + 독립 스케일링 |
| API Gateway | MSA 진입점. 인증/라우팅/레이트리밋 통합 처리 |

## Kenny anchor (NewtonHQ 대응)

| 인프라/아키텍처 | NewtonHQ 대응 |
|----------------|---------------|
| 3-Tier 아키텍처 | 사람(Kenny) / jarvis(WAS) / memory/(DB) |
| 로드밸런서 | 병렬 sub-agent (트래픽 = task 분산) |
| MSA | 도메인별 독립 sub (school / realty / soul) |
| API Gateway | 00_meta/orchestrator/ (중앙 라우팅) |
| CDN | memory/1_pinned.md (자주 쓰는 내용 캐시) |
| 메시지 큐 | BBS / OneNote (비동기 통신 버퍼) |
| 아키텍트 역할 | Kenny (설계+결재) / jarvis (구현+자율) |

## Quiz (Kenny 자가 check)

1. 3-Tier 각 계층이 하는 일을 웹 쇼핑몰 시나리오로 설명하라.
2. MSA 로 전환 시 API Gateway 가 필요한 이유는?
3. 로드밸런서 없이 트래픽 급증 시 어떤 문제가 생기는가?
4. CDN 이 없을 때 한국 사용자와 미국 사용자 응답 속도 차이 원인은?
5. 메시지 큐가 없을 때 서비스 간 강결합이 생기는 이유는?

## 옛 자리 ref

- source: `transcripts/Part7_IT인프라_아키텍처.txt`
- chapter folder: `chapter-7/`
