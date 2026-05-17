---
title: Chapter 4 — 컴퓨터 구조 / OS
workshop: 008-tech-stack-landscape
date: 2026-05-17
status: complete
---

# Chapter 4 — 컴퓨터 구조 / OS

> 깨봉 25 7-8 / 2026-05-17 / Kenny Study Notebook

---

## 목표

컴퓨터가 어떻게 돌아가는지 골격 박기.
CPU / 메모리 / 디스크 / OS / 프로세스 = 5가지 기둥.

---

## 파일 맵

```
chapter-4/
   README.md              <- 이 파일
   glossary.md            <- 핵심 term + 정의 + Kenny 매핑
   memory-hierarchy.md    <- 메모리 계층 (캐시 / 메인 / 가상 / 디스크) 비교
   process-thread.md      <- 프로세스 vs 쓰레드 + 멀티태스킹 원리
   topics/
      cpu-architecture.md <- 폰노이만 구조 + 코어 + 스케줄링
      os-role.md          <- OS 6가지 역할 (메모리관리/CPU스케줄링/파일시스템/IO)
      virtualization.md   <- 가상화 (VM / Docker / WSL2) 개념
   index.html             <- visual interactive
```

---

## Kenny Anchor — 컴퓨터 구조 → NewtonHQ

```
  CPU            ->  Claude API 토큰 처리 (계산 전담)
  RAM (메인 메모리) -> 세션 context window (임시 고속 저장)
  디스크          ->  00_meta/mind/memory/ 카드 (반영구)
  캐시 메모리     ->  1_pinned.md (자주 쓰는 항목 선적재)
  OS             ->  jarvis (하드웨어=tool ↔ Kenny=사용자 중개)
  프로세스        ->  sub-agent 인스턴스
  시분할          ->  run_in_background 병렬 실행
  가상 메모리     ->  lazy load (필요 시만 파일 읽기)
```

---

## 5 Group (영상 기준)

| Group | 주제 |
|-------|------|
| A | 폰노이만 구조 (CPU/메모리/디스크 기본) |
| B | 메모리 계층 (캐시 → 메인 → 디스크) |
| C | OS 역할 (스케줄링 / 메모리 관리) |
| D | 프로세스 vs 쓰레드 |
| E | 가상화 (VM / Docker / 컨테이너) |

---

## Kenny Deep Picks

| 영역 | 선택 | 이유 |
|------|------|------|
| 가상화 | Docker | Immich/ComfyUI 이미 사용. 컨테이너 = 표준 |
| OS | Windows + WSL2 | Kenny 환경. PowerShell + Bash 혼용 |
| 멀티쓰레딩 | 이해 수준 | 직접 구현 X / 병렬 개념 이해 목적 |

---

## ref

- summary: `transcripts/Part4_컴퓨터구조_OS.summary.md`
- transcript: `transcripts/Part4_컴퓨터구조_OS.txt`
