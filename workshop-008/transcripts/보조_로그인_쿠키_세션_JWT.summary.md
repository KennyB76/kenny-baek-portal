---
title: "보조 - 로그인 / 쿠키 / 세션 / JWT"
type: supplementary
category: security
duration: ~15min (estimated)
generated: 2026-05-17
---

# 보조 - 로그인 / 쿠키 / 세션 / JWT

## 1줄 핵심

HTTP 는 상태 없음 (Stateless). 로그인 상태 유지 = 쿠키/세션/JWT 중 하나로 해결.

## 요약 (3 포인트)

1. 쿠키 - 브라우저에 저장하는 작은 텍스트. 서버가 심어줌. 로그인 기억 / 장바구니 유지.
2. 세션 - 서버 측 저장. 세션 ID 만 쿠키로 주고 실제 데이터는 서버 DB 에. 보안↑ 서버 메모리↑.
3. JWT - JSON Web Token. 서명된 토큰을 클라이언트에 저장. 서버 무상태 (Stateless) 유지. MSA 에 적합.

## Kenny anchor

| 인증 개념 | NewtonHQ 대응 |
|----------|---------------|
| 쿠키 | CLAUDE.md cascade (@ref = 세션 간 기억) |
| 세션 | context window (서버=Claude 측 상태) |
| JWT | API key (서명된 인증 토큰) |
| OAuth | Google SSO (mcp_google_plugin 인증) |

## 옛 자리 ref

- source: `transcripts/보조_로그인_쿠키_세션_JWT.txt`
