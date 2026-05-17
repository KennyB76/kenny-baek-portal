---
title: "보조 - URL 입력 시 브라우저가 하는 일"
type: supplementary
category: network
duration: ~10min (estimated)
generated: 2026-05-17
---

# 보조 - URL 입력 시 브라우저가 하는 일

## 1줄 핵심

주소창에 URL 타이핑 → Enter = 6단계 자동 프로세스. DNS → IP → TCP → HTTP → 응답 → 렌더링.

## 요약 (3 포인트)

1. DNS 조회 - 도메인 → IP 변환. 도메인 네임 서버에서 실제 서버 주소 받아옴.
2. HTTP 요청 - IP + 포트 (80/443) 로 TCP 연결 후 GET 요청. HTML 파일 받아옴.
3. 렌더링 - HTML 파싱 → CSS 적용 → JS 실행 → 화면 완성. 이 과정이 FE 개발 영역.

## Kenny anchor

| 브라우저 단계 | NewtonHQ 대응 |
|-------------|---------------|
| URL 입력 | Kenny 명령 입력 |
| DNS 조회 | MCP tool 이름 → 실행 함수 매핑 |
| HTTP 요청 | tool call 실행 |
| 렌더링 | jarvis 응답 출력 |

## 옛 자리 ref

- source: `transcripts/보조_URL입력시_브라우저_일.txt`
