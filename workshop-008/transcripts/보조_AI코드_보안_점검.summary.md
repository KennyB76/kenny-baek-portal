---
title: "보조 - AI 코드 보안 점검"
type: supplementary
category: security
duration: ~15min (estimated)
generated: 2026-05-17
---

# 보조 - AI 코드 보안 점검

## 1줄 핵심

AI 가 만든 코드 = 기능은 작동. 보안은 검수 필요. SQL Injection / XSS / 인증 누락 = 단골 취약점.

## 요약 (3 포인트)

1. AI 코드 취약점 - SQL Injection (입력값 그대로 쿼리), XSS (스크립트 삽입), 인증 없는 API 엔드포인트.
2. 보안 점검 체크리스트 - 입력값 검증 / 환경변수 분리 (.env) / HTTPS 강제 / API 키 하드코딩 X.
3. 실무 도구 - OWASP Top 10 기준 점검. GitHub Dependabot (취약 패키지 알림). Snyk.

## Kenny anchor

| 보안 개념 | NewtonHQ 대응 |
|----------|---------------|
| API 키 하드코딩 X | 8_api.md 별도 저장 (평문 아님) |
| 입력값 검증 | Kenny 결재 (위험 작업 한 줄 답) |
| .env 분리 | vault 패턴 (credential 별도) |
| HTTPS | API key 인증 (Claude/Wave 토큰) |

## 옛 자리 ref

- source: `transcripts/보조_AI코드_보안_점검.txt`
