---
title: Chapter 5 — 네트워크
workshop: 008-tech-stack-landscape
date: 2026-05-17
status: complete
---

# Chapter 5 — 네트워크

> 깨봉 25 7-8 / 2026-05-17 / Kenny Study Notebook

---

## 목표

인터넷이 어떻게 작동하는지 구조 잡기.
클라이언트-서버 / HTTP / DNS / TCP-IP = 4 기둥.

---

## 파일 맵

```
chapter-5/
   README.md              <- 이 파일
   glossary.md            <- 핵심 term + 정의 + Kenny 매핑
   http-deep.md           <- HTTP 심화 (헤더 / 상태코드 / 메서드 / HTTPS)
   dns-routing.md         <- DNS 조회 흐름 + CDN + Cloudflare
   topics/
      tcp-ip-layers.md    <- OSI 7계층 vs TCP/IP 4계층 비교
      websocket-sse.md    <- 실시간 통신 (WebSocket / SSE / Polling 비교)
      cors-security.md    <- CORS 에러 원인 + 해결법 (프록시 / 서버 설정)
   index.html             <- visual interactive
```

---

## Kenny Anchor — 네트워크 → NewtonHQ

```
  클라이언트     ->  Kenny (요청 보내는 사람)
  서버           ->  jarvis / Claude API
  HTTP 요청      ->  tool call (Read/Write/Bash)
  DNS            ->  MCP 라우팅 (tool 이름 → 실행 함수)
  포트           ->  sub-agent 채널 구분
  HTTPS          ->  API key 인증
  WAS            ->  jarvis (단순 응답 넘어 로직 처리)
  Tailscale      ->  WireGuard P2P VPN (homedesktop ↔ office)
```

---

## 5 Group (영상 기준)

| Group | 주제 |
|-------|------|
| A | 클라이언트-서버 구조 기본 |
| B | HTTP 프로토콜 (헤더 / 메서드 / 상태코드) |
| C | DNS 조회 흐름 (URL → IP) |
| D | TCP/IP 계층 (신뢰성 보장 원리) |
| E | 실시간 통신 (WebSocket / SSE) |

---

## Kenny Deep Picks

| 영역 | 선택 | 이유 |
|------|------|------|
| VPN | Tailscale (WireGuard) | homedesktop ↔ office 연결. 이미 사용 중 |
| HTTP 클라이언트 | axios | Newton 프로젝트 표준 |
| CDN | Cloudflare | newton*.org 도메인 DNS + CDN |

---

## ref

- summary: `transcripts/Part5_네트워크.summary.md`
- transcript: `transcripts/Part5_네트워크.txt`
