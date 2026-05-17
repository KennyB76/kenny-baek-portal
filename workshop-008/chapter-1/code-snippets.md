---
title: Code Snippets — 같은 task 3 언어 비교
date: 2026-05-16
---

# Code Snippets — 같은 task, 3 언어 비교

> Node.js / Python / Java — 같은 목표, 다른 문법.
> 모두 실제 실행 가능.

---

## Task 1: "학생 목록 API 서버"

### Node.js (Express)

```javascript
// npm install express
const express = require('express');
const app = express();
app.use(express.json());

const students = [
  { id: 1, name: 'Kenny', subject: 'Math' },
  { id: 2, name: 'Evelyn', subject: 'Calculus' }
];

app.get('/students', (req, res) => res.json(students));

app.get('/students/:id', (req, res) => {
  const student = students.find(s => s.id === +req.params.id);
  if (!student) return res.status(404).json({ error: 'Not found' });
  res.json(student);
});

app.listen(3000, () => console.log('Server on :3000'));
```

### Python (FastAPI)

```python
# pip install fastapi uvicorn
from fastapi import FastAPI, HTTPException

app = FastAPI()

students = [
    {'id': 1, 'name': 'Kenny', 'subject': 'Math'},
    {'id': 2, 'name': 'Evelyn', 'subject': 'Calculus'}
]

@app.get('/students')
def get_students():
    return students

@app.get('/students/{student_id}')
def get_student(student_id: int):
    student = next((s for s in students if s['id'] == student_id), None)
    if not student:
        raise HTTPException(status_code=404, detail='Not found')
    return student

# uvicorn main:app --port 3000
```

### Java (Spring Boot)

```java
// Spring Boot + Maven/Gradle 필요
@RestController
@RequestMapping("/students")
public class StudentController {

    private final List<Map<String, Object>> students = Arrays.asList(
        Map.of("id", 1, "name", "Kenny", "subject", "Math"),
        Map.of("id", 2, "name", "Evelyn", "subject", "Calculus")
    );

    @GetMapping
    public List<Map<String, Object>> getAll() {
        return students;
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getById(@PathVariable int id) {
        return students.stream()
            .filter(s -> (int) s.get("id") == id)
            .findFirst()
            .map(ResponseEntity::ok)
            .orElse(ResponseEntity.notFound().build());
    }
}
```

---

## Task 2: "CSV 읽어서 평균 계산"

### Node.js

```javascript
const fs = require('fs');
const rows = fs.readFileSync('scores.csv', 'utf8').trim().split('\n');
const scores = rows.slice(1).map(r => +r.split(',')[1]);  // 헤더 제외
const avg = scores.reduce((a, b) => a + b, 0) / scores.length;
console.log('Average:', avg.toFixed(2));
```

### Python

```python
import pandas as pd

df = pd.read_csv('scores.csv')
avg = df['score'].mean()
print(f'Average: {avg:.2f}')
```

### Java

```java
import java.nio.file.*;
import java.util.*;
import java.util.stream.*;

List<String> lines = Files.readAllLines(Path.of("scores.csv"));
OptionalDouble avg = lines.stream()
    .skip(1)  // 헤더 제외
    .mapToDouble(line -> Double.parseDouble(line.split(",")[1]))
    .average();
System.out.printf("Average: %.2f%n", avg.getAsDouble());
```

---

## Task 3: "외부 API 호출 + JSON 파싱"

### Node.js

```javascript
async function fetchRate(zip) {
  const res = await fetch(`https://api.realtor.com/v2/properties?zip=${zip}`);
  const data = await res.json();
  console.log('Median price:', data.median_listing_price);
}
fetchRate('07601');
```

### Python

```python
import requests

def fetch_rate(zip_code):
    r = requests.get(
        'https://api.realtor.com/v2/properties',
        params={'zip': zip_code}
    )
    data = r.json()
    print('Median price:', data['median_listing_price'])

fetch_rate('07601')
```

### Java

```java
import java.net.*;
import java.net.http.*;
import com.fasterxml.jackson.databind.ObjectMapper;

HttpClient client = HttpClient.newHttpClient();
HttpRequest req = HttpRequest.newBuilder()
    .uri(URI.create("https://api.realtor.com/v2/properties?zip=07601"))
    .build();
HttpResponse<String> res = client.send(req, HttpResponse.BodyHandlers.ofString());
Map<?, ?> data = new ObjectMapper().readValue(res.body(), Map.class);
System.out.println("Median price: " + data.get("median_listing_price"));
```

---

## Task 4: "비동기 여러 요청 병렬 처리"

### Node.js

```javascript
async function fetchAll(ids) {
  const results = await Promise.all(
    ids.map(id => fetch(`/api/students/${id}`).then(r => r.json()))
  );
  results.forEach(s => console.log(s.name));
}

fetchAll([1, 2, 3]);
```

### Python

```python
import asyncio
import aiohttp

async def fetch_student(session, student_id):
    async with session.get(f'/api/students/{student_id}') as r:
        return await r.json()

async def fetch_all(ids):
    async with aiohttp.ClientSession() as session:
        tasks = [fetch_student(session, i) for i in ids]
        results = await asyncio.gather(*tasks)
    for s in results:
        print(s['name'])

asyncio.run(fetch_all([1, 2, 3]))
```

### Java

```java
import java.util.concurrent.*;
import java.net.http.*;

ExecutorService pool = Executors.newFixedThreadPool(3);
List<CompletableFuture<String>> futures = List.of(1, 2, 3).stream()
    .map(id -> CompletableFuture.supplyAsync(() -> {
        // HTTP call logic here
        return "Student " + id;
    }, pool))
    .toList();

CompletableFuture.allOf(futures.toArray(new CompletableFuture[0])).join();
futures.forEach(f -> System.out.println(f.join()));
```

---

## 비교 요약

| Task | Node.js | Python | Java |
|------|---------|--------|------|
| 코드 길이 | 짧음 | 가장 짧음 | 김 |
| 비동기 표현 | async/await 자연 | asyncio (후발) | CompletableFuture (복잡) |
| 데이터 처리 | 기본적 | pandas 가 압도적 | Stream API 있지만 불편 |
| 속도 | 빠름 (I/O) | 중간 | JVM 워밍업 후 빠름 |
| 설정 | npm install (간단) | pip install (간단) | Maven/Gradle (무거움) |
