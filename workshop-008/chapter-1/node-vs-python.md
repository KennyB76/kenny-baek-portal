---
title: Node.js vs Python — BE Deep
date: 2026-05-16
pick: Kenny BE (둘 다)
---

# Node.js vs Python — BE Deep

> Kenny Pick: 둘 다. 용도가 다름.

---

## 1. 한 줄 정체

| | 정의 |
|---|---|
| **Node.js** | JavaScript 를 서버에서 실행하는 runtime. 브라우저 밖의 JS. 이벤트 루프 + 비동기 I/O 특화. |
| **Python** | 데이터 분석 / AI / 스크립팅에 강한 언어. 문법 간결. 생태계 폭이 넓음. |

```
Node.js  = JS runtime (V8 엔진)
             브라우저 JS → 서버로 탈출
             이벤트 루프 기반 / 빠른 I/O

Python   = 범용 언어
             AI / 데이터 / 자동화 / 웹 서버
             읽기 쉬운 문법 / 과학 생태계
```

---

## 2. 장단점 표 (6 axis)

| 기준 | Node.js | Python |
|------|---------|--------|
| **속도 (I/O)** | 빠름. 비동기 non-blocking | 동기 기본. asyncio 로 보완 |
| **async** | 언어 핵심. async/await 자연스러움 | asyncio 가 있지만 후발 |
| **학습 곡선** | JS 알면 낮음. 모르면 중간 | 낮음. 가장 배우기 쉬운 언어 중 하나 |
| **AI/ML 생태계** | 약함 (TensorFlow.js 있지만 비주류) | 압도적. PyTorch / TensorFlow / sklearn |
| **타입 시스템** | TypeScript 선택적 적용 | Type hint 선택적 (mypy) |
| **패키지** | npm (250만+ 패키지) | pip (PyPI 500만+ 패키지) |

---

## 3. 같은 task 코드 비교

### Task 1: HTTP 서버 만들기

```javascript
// Node.js (Express)
const express = require('express');
const app = express();

app.get('/students', (req, res) => {
  res.json([{ name: 'Kenny', grade: 'A' }]);
});

app.listen(3000, () => console.log('Port 3000'));
```

```python
# Python (FastAPI)
from fastapi import FastAPI
app = FastAPI()

@app.get('/students')
def get_students():
    return [{'name': 'Kenny', 'grade': 'A'}]

# uvicorn main:app --port 3000
```

### Task 2: JSON 파일 읽기 / 쓰기

```javascript
// Node.js
const fs = require('fs');

// 읽기
const data = JSON.parse(fs.readFileSync('students.json', 'utf8'));

// 쓰기
data.push({ name: 'Evelyn', grade: 'A' });
fs.writeFileSync('students.json', JSON.stringify(data, null, 2));
```

```python
# Python
import json

# 읽기
with open('students.json', 'r') as f:
    data = json.load(f)

# 쓰기
data.append({'name': 'Evelyn', 'grade': 'A'})
with open('students.json', 'w') as f:
    json.dump(data, f, indent=2)
```

### Task 3: HTTP 외부 API 호출

```javascript
// Node.js (fetch — Node 18+)
async function getStudent(id) {
  const res = await fetch(`https://api.newton.school/students/${id}`);
  const data = await res.json();
  console.log(data.name);
}
getStudent('kenny');
```

```python
# Python (requests)
import requests

def get_student(student_id):
    r = requests.get(f'https://api.newton.school/students/{student_id}')
    data = r.json()
    print(data['name'])

get_student('kenny')
```

### Task 4: 파일 디렉토리 읽기

```javascript
// Node.js
const fs = require('fs');
const files = fs.readdirSync('./lessons');
files.forEach(f => console.log(f));
```

```python
# Python
import os
files = os.listdir('./lessons')
for f in files:
    print(f)
```

### Task 5: DB 쿼리 (SQLite)

```javascript
// Node.js (better-sqlite3)
const Database = require('better-sqlite3');
const db = new Database('newton.db');

const students = db.prepare('SELECT * FROM students WHERE grade = ?').all('A');
console.log(students);
```

```python
# Python (sqlite3 내장)
import sqlite3

conn = sqlite3.connect('newton.db')
cur = conn.cursor()
cur.execute('SELECT * FROM students WHERE grade = ?', ('A',))
students = cur.fetchall()
print(students)
```

---

## 4. Newton 자리 매핑

### Node.js → jarvis 자동화 쪽

```
Node.js 강점             Newton 매핑
-----------              ------------
빠른 I/O               → jarvis 가 여러 API 동시 호출
async/await             → sub-agent 병렬 패턴
npm 생태계              → Claude Code agent 도구
Express/Fastify 서버   → Newton web API 백엔드
파일 시스템 조작         → HQ_Workshop assets 생성
이벤트 기반              → webhook 처리 (Drive 변경 감지)
```

구체적 사용처:
- jarvis sub-agent 스크립트 (claude 코드 안 JS/TS)
- Newton 학생 포탈 API (Next.js = Node 기반)
- Google Drive sync monitor

### Python → 데이터 / AI / 스크래핑 쪽

```
Python 강점              Newton 매핑
-----------              ------------
pandas / numpy         → 부동산 시장 데이터 분석
AI/ML (PyTorch)        → Newton AI Labs 실험
requests / scrapy      → Realty 매물 스크래핑
FastAPI 서버           → AI model serving
asyncio                → 비동기 크롤러
Jupyter notebook       → 데이터 시각화 리포트
```

구체적 사용처:
- Zillow / Realtor 매물 데이터 수집
- 투자 포트폴리오 분석 스크립트
- Newton AI Labs 실험 환경

---

## 5. 함수 위주 강점

### Node.js 핵심 함수

```javascript
// fs — 파일 시스템
fs.readFileSync(path, 'utf8')
fs.writeFileSync(path, content)
fs.readdirSync(dir)

// path — 경로 처리
path.join(__dirname, 'lessons', 'react.md')
path.resolve('./output')

// fetch (Node 18+) — HTTP
const res = await fetch(url);
const json = await res.json();

// events — 이벤트 에미터
const EventEmitter = require('events');
const emitter = new EventEmitter();
emitter.on('lesson-done', () => { /* ... */ });

// async/await — 비동기
async function loadAll() {
  const [students, lessons] = await Promise.all([
    fetchStudents(),
    fetchLessons()
  ]);
}
```

### Python 핵심 함수

```python
# pandas — 데이터 분석
import pandas as pd
df = pd.read_csv('properties.csv')
df.groupby('city')['price'].mean()

# numpy — 수치 계산
import numpy as np
prices = np.array([500000, 620000, 480000])
np.mean(prices)  # 평균
np.std(prices)   # 표준편차

# requests — HTTP
import requests
r = requests.get(url, params={'zip': '07601'})
data = r.json()

# asyncio — 비동기
import asyncio
async def fetch_all(urls):
    tasks = [fetch(url) for url in urls]
    return await asyncio.gather(*tasks)

# FastAPI — 웹 서버
from fastapi import FastAPI
@app.get('/analyze/{zip_code}')
async def analyze(zip_code: str):
    return {'median': calculate_median(zip_code)}
```

---

## 6. 선택 가이드

```
웹 API 서버 (빠른 응답 필요)   ->  Node.js (Express / Fastify)
데이터 분석 / AI              ->  Python
스크래핑                      ->  Python (scrapy / playwright)
Claude Code 자동화 스크립트   ->  Node.js (JS/TS 친숙)
풀스택 (React 프론트 + 백)    ->  Node.js (같은 언어)
데이터 파이프라인             ->  Python
Newton 실제 선택              ->  둘 다. 도메인에 따라 분기
```

---

## ref

- react.md (FE 짝)
- code-snippets.md (3 언어 비교)
- topics/event-handling.md (동기/비동기 상세)
