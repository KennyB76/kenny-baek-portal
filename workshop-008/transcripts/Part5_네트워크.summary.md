---
title: "Part5 - 네트워크"
chapter: 5
duration: ~20min (estimated)
generated: 2026-05-17
---

# Part5 - 네트워크

## 5 손가락 요약

1. 클라이언트-서버 구조 - 클라이언트가 요청 → 서버가 응답. 모든 네트워크 통신의 기본.
2. HTTP 핵심 - HyperText Transfer Protocol. 브라우저 ↔ 서버 통신 표준. 80 포트 (HTTPS = 443).
3. 웹 서버 vs WAS - 웹 서버 = HTML/CSS/JS 정적 파일 응답. WAS = 비즈니스 로직 처리 (Spring/Node).
4. DNS = 인터넷 전화번호부 - URL → IP 변환. 브라우저가 도메인 치면 DNS 서버가 IP 알려줌.
5. 프로토콜 계층 - HTTP (응용) → TCP (전송 보장) → IP (경로 찾기) → 물리. 각 계층 역할 분리.

## 주요 용어 + 정의

| 용어 | 정의 |
|------|------|
| 클라이언트 | 서버에 요청 보내는 쪽. 브라우저, 앱, 노트북 등 |
| 서버 | 요청 받아 응답 주는 쪽. 사양 높은 컴퓨터 + 소프트웨어 |
| HTTP | 웹 통신 프로토콜. 요청/응답 형식 규약 |
| HTTPS | HTTP + TLS 암호화. 인증서 기반 보안 통신 |
| 웹 서버 | HTML/CSS/JS 정적 파일 서빙. Apache, Nginx |
| WAS | Web Application Server. 동적 비즈니스 로직. Spring Boot, Express |
| DNS | Domain Name System. 도메인 → IP 주소 변환 |
| TCP | 전송 제어 프로토콜. 패킷 순서 보장 + 재전송. 신뢰성 높음 |
| IP | Internet Protocol. 패킷 경로 지정. IP 주소 기반 라우팅 |
| 포트 | 하나의 IP 에서 서비스 구분. 80=HTTP / 443=HTTPS / 3000=Node dev |
| 방화벽 | 허가되지 않은 포트/IP 접근 차단. 네트워크 보안 1선 |

## Kenny anchor (NewtonHQ 대응)

| 네트워크 개념 | NewtonHQ 대응 |
|--------------|---------------|
| 클라이언트 | Kenny (요청 보내는 사람) |
| 서버 | jarvis / Claude API (응답 주는 쪽) |
| HTTP 요청 | tool call (Read/Write/Bash 등) |
| DNS | MCP 라우팅 (tool 이름 → 실행 함수 매핑) |
| 포트 | sub-agent 채널 (BBS / OneNote / Slack 구분) |
| HTTPS | API key 인증 (Claude/Google/Wave 토큰) |
| WAS | jarvis (단순 응답 넘어서 로직 처리) |
| 방화벽 | SAFETY 룰 (destructive 작업 자동 차단) |

## Quiz (Kenny 자가 check)

1. 브라우저에 URL 치고 Enter 누를 때 일어나는 일을 5단계로 설명하라.
2. 웹 서버와 WAS 를 나눠 쓰는 이유 (역할 분리 + 성능)?
3. TCP 와 UDP 의 실용적 차이 (게임 vs 파일 전송)?
4. HTTPS 가 없으면 생기는 중간자 공격(MITM) 원리는?
5. Tailscale 이 왜 일반 VPN 보다 빠른지 (WireGuard P2P 원리)?

## 옛 자리 ref

- source: `transcripts/Part5_네트워크.txt`
- chapter folder: `chapter-5/`
