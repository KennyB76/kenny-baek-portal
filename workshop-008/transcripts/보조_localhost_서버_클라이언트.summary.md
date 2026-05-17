---
title: "보조 - localhost / 서버 / 클라이언트 쉬운 설명"
type: supplementary
category: network
duration: ~10min (estimated)
generated: 2026-05-17
---

# 보조 - localhost / 서버 / 클라이언트 쉬운 설명

## 1줄 핵심

localhost = 내 컴퓨터가 동시에 서버+클라이언트. 개발할 때 서버 띄우고 브라우저로 자기 자신에 접속.

## 요약 (3 포인트)

1. localhost = 127.0.0.1 - 루프백 주소. 외부로 나가지 않고 내 컴퓨터 안에서 통신. 개발 전용 주소.
2. 포트 = 서비스 구분 - localhost:3000 (React) / localhost:8080 (Spring) / localhost:8188 (ComfyUI). 포트로 다른 서비스 구분.
3. 배포 = 클라우드 이동 - localhost 잘 되면 → Vercel/AWS 에 올리면 전 세계 접속 가능. 이 과정이 배포(deploy).

## Kenny anchor

| localhost 개념 | NewtonHQ 대응 |
|---------------|---------------|
| localhost | homedesktop (Tailscale 100.109.224.71) |
| 포트 | 8188 = ComfyUI / 2283 = Immich |
| 루프백 | SSH 내부 통신 |
| 배포 | GitHub Pages push |

## 옛 자리 ref

- source: `transcripts/보조_localhost_서버_클라이언트.txt`
