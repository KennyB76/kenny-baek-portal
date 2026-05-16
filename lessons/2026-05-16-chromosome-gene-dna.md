---
title: "Chromosome / Gene / DNA — Hierarchical Zoom"
date: 2026-05-16
subject: 유전학 / 세포생물학 / 염색체
type: interactive
author: jarvis (for Kenny)
ref_html: ../presentation/chromosome-gene-dna/index.html
source: NIH/NCBI · Nature Scitable · NIH StatPearls
---

# Chromosome / Gene / DNA — Hierarchical Zoom

> 정신과 선생님 발표 보조 자료 (2026-05-16).
> Chromosome ↔ gene ↔ DNA 위계를 5 단계 zoom 으로 시각화 — day/dark + 한/영 toggle.

---

## 본문 link

**한 장 인터랙티브 HTML** (5 섹션, day/dark + 한/영 toggle):

[`chromosome-gene-dna/index.html`](../presentation/chromosome-gene-dna/index.html)

본진 파일:
```
C:\NewtonHQ\04_newtonschool\projects\presentation\therapist-2026-05-16\
   chromosome-gene-dna\
      ├── index.html    (self-contained, 5 섹션, 인터랙티브)
      └── notes.md      (research 요약 + 출처)
```

---

## 5 섹션

| § | 내용 | 인터랙션 |
|---|------|---------|
| I | 세포 한 개 (nucleus clickable SVG) | 클릭 → § II 이동 |
| II | 핵 안 — 23 쌍 karyotype | 각 쌍 hover → 번호 + 기능 tooltip |
| III | 염색체 → DNA 응축 4 단계 | 각 단계 클릭 → 강조 |
| IV | DNA 이중 나선 (canvas animation) | 마우스 위치 → 회전 속도 변경 |
| V | 유전자 4 개 카드 | 클릭 → 세부 설명 확장 |

---

## 계층 (hierarchy)

```
몸 (Body)
 └── 세포 (Cell) — 약 37조 개
       └── 핵 (Nucleus)
             └── 염색체 (Chromosome) — 46 개 (23 쌍)
                   └── DNA — 이중 나선 / ~30 억 염기 쌍
                         └── 유전자 (Gene) — ~20,000 개
```

---

## 배운 점 (Kenny 인지)

```
1. 압축 비율 = 10,000:1 — DNA 2 m → 핵 6 µm (축구장 → 동전)
2. 염색체 = DNA + 히스톤 단백질 복합체 (chromatin)
3. 응축 4 단계: 이중 나선 → 뉴클레오솜 → 크로마틴 섬유 → 염색체
4. 유전자 = DNA 전체의 약 1.5 % 만 (나머지 = 조절 / 구조)
5. gene 켜짐/꺼짐 = 환경·경험 영향 (epigenetics) ⭐
6. 성염색체 XX = 여성 / XY = 남성 — SRY 유전자가 스위치
```

---

## 발표 연계

> "염색체 / 유전자 구조를 보면 — 사람의 특성이 얼마나 복잡한 계층으로 결정되는지 알 수 있습니다."

자매 인터랙티브: [Gene vs DNA — 발현 / 파동 간섭](./2026-05-16-gene-vs-dna-interactive.md)

---

## ref

- research 요약: `../presentation/chromosome-gene-dna/notes.md`
- 출처 1: https://www.ncbi.nlm.nih.gov/books/NBK26834/ (NIH/NCBI)
- 출처 2: https://www.nature.com/scitable/topicpage/dna-packaging-nucleosomes-and-chromatin-310/ (Nature Scitable)
- 출처 3: https://www.ncbi.nlm.nih.gov/books/NBK534207/ (NIH StatPearls)
