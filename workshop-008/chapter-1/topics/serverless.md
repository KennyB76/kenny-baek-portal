---
title: Serverless — Lambda / Vercel / Cloudflare
date: 2026-05-16
---

# Serverless

> "서버 없음" 이 아니라 — "서버 관리 없음".
> 코드만 올리면 플랫폼이 서버 관리.

---

## 개념

```
전통 서버:
  Kenny 가 EC2 인스턴스 띄움 → OS 관리 → Node 설치 → 배포 → 24시간 과금

Serverless:
  Kenny 가 함수 하나 올림 → 요청 올 때만 실행 → 실행 시간만 과금
```

### 장단점

| | 장점 | 단점 |
|---|------|------|
| 비용 | 사용한 만큼만 | 트래픽 높으면 비쌀 수 있음 |
| 관리 | 인프라 관리 X | Cold start 지연 (첫 실행) |
| 스케일 | 자동 수평 확장 | 긴 실행 부적합 (최대 15분) |
| 배포 | 함수 단위로 빠름 | 로컬 디버깅 어려움 |

---

## 대표 플랫폼

### AWS Lambda

```javascript
// Lambda handler (Node.js)
exports.handler = async (event) => {
  const studentId = event.pathParameters.id;
  const student = await getStudent(studentId);
  return {
    statusCode: 200,
    body: JSON.stringify(student)
  };
};
```

- AWS 생태계 통합 최강
- Cold start: ~100ms~1s (Node.js 기준)
- 무료 티어: 1M 요청/월

### Vercel Functions

```javascript
// api/students/[id].js
export default function handler(req, res) {
  const { id } = req.query;
  res.json({ id, name: 'Kenny' });
}
```

- Next.js 와 통합 최적
- Edge Functions (CDN 노드에서 실행)
- Kenny 선택: Newton 학생 포탈 + Realty 사이트

### Cloudflare Workers

```javascript
// Cloudflare Worker
addEventListener('fetch', event => {
  event.respondWith(handleRequest(event.request));
});

async function handleRequest(request) {
  return new Response(JSON.stringify({ status: 'ok' }), {
    headers: { 'Content-Type': 'application/json' }
  });
}
```

- 전 세계 CDN 엣지에서 실행
- Cold start 거의 없음 (~0ms)
- 무료 티어: 10만 요청/일

---

## Newton 활용

```
Vercel Functions   ->  학생 포탈 API (GET /students/{id})
                       Realty 매물 검색 API
AWS Lambda         ->  주기적 크롤링 (cron trigger)
                       긴 데이터 처리 (Python runtime)
Cloudflare Workers ->  CDN 캐싱 + 글로벌 배포
```
