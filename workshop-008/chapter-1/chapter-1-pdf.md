---
title: 개발자 기본 지식 (PDF 본진 -- 5 pages)
source: 07_hub/HQ_Shared/scans/personal/kenny-study-scan/5162026 개발자 기본 지식2.pdf
exported: 2026-05-16
method: Read tool (multimodal PDF)
pages: 5
status: Level 1 + Level 2 both
---

# 5/16/2026 개발자 기본 지식

> Saturday, May 16, 2026 9:40 PM
> 깨봉 25 7-8 (Kenny Study Notebook)


==================================================================
  PAGE 1  --  Level 1 start  +  프롤로그  +  1장 소프트웨어 개발
==================================================================

## 프롤로그

## 1장. 소프트웨어 개발

- 컴퓨터 전공자들이 주로 배우는 내용
- 소프트웨어를 개발한다는 것은 무엇입니까?
- 누구나 개발을 할 수 있나요?
- 누가 소프트웨어 개발을 잘 할 수 있을까요?

**[손글씨 다이어그램]**
- "AI 개발" 박스
- 화살표 -> 개념 -> Top -> Down
- DB / 서버 / 클라이언트 자리


==================================================================
  PAGE 2  --  2장 종류와 특징  +  3장 개발 언어
==================================================================

## 2장. 소프트웨어의 종류와 특징

- 소프트웨어의 종류
- 웹, 웹앱, 네이티브 앱, 하이브리드 앱의 차이
- 웹 어플리케이션 개발과 구성
- 프론트 엔드 vs 백엔드

## 3장. 소프트웨어를 만드는 개발 언어

- 언제 어떤 언어를 선택하는 게 좋을까요?
- 전공자들이 배우는 C 언어
- C 언어와 C++ 의 차이는 무엇인가요?
- 자바 (Java) 는 어떤 언어인가요?

**[손글씨 다이어그램]**
- Why? -> 문법 -> 인지
- if / for / while
- MSA -> API -> 자바 -> Spring -> node.js -> javascript -> DB
- MVP -> 시작 -> 마비 (?)

---

## Kenny 의 시작 메모

```
   시작
     frontend  : react.js
     Backend   : node.js
     이후 발전 : java / springboot / Migration
```

## React 가 실제로 많이 쓰임 -- 객체지향 ⭐

```
   Class         ->  skill, subagent
   Object        ->  발화된 클래스
                     (Object1=classA, Object2=classB ... 등)
   Inheritance   ->  claude.md cascading
```

> "그리고 뭐가 더 있네. 내가 인지 하지 못하고 있는."
> "스킬 개발 / 서브에이전트 개발 전에 -- 객체지향 언어의 속성 필요."

**[손글씨 다이어그램]**
- 클래스 -> 객체A
- Class Airplane / Airplane(a;) -> 비행


==================================================================
  PAGE 3  --  프론트 엔드 + Native + Python  +  Level 1 end
==================================================================

## 프론트 엔드

1. 화면 이쁘게 그리기
2. 이벤트 처리
3. 데이터 통신 -- ajax? Axios? 이게 뭐지 어렵다는데.
   - 이거가 본질인데.
   - 나는 가능한 Claude environment 만들고 싶어.
   - Claude design 아직 뭔지 모르고.
   - React 도 잘 몰라.
   - 한번 프로젝트 하면서 경험해보고 싶어.

## React Native / webapp?

**[손글씨 다이어그램]**
- 하 / 어 / 형 (?)
- RN -> 2 platform 분기

## Python

- 데이터 분석 / 인공지능 / 빅데이터
- 분석에 좋다는데. 뭐가 좋지?
- 서버도 되고 분석도 된다는데, node 랑 다른가?

## 지도 개념

- 내가 만드려는 것의 프로토타입 보여주고
- 어느 테크트리 / 어떤 리소스가 필요한가?
- 이거 스킬화 필요.

## ref

- q.technote.wiki

---

**Level 1 end / Level 2 start**


==================================================================
  PAGE 4  --  4장. 개발할 때 알아야 하는 필수 지식  (Level 2)
==================================================================

## 4장. 개발할 때 알아야 하는 필수 지식

- 자료 구조란 무엇인가요?
- API vs OpenAPI
- REST API vs RESTful API
- 함수, 클래스, 객체, 라이브러리, SDK, 모듈, 인스턴스, 컴포넌트, 프레임웍
- 동기와 비동기라는 개념은 무엇이고, 차이는 무엇인가요?
- Ajax 라는 것은 무엇인가요?
- XML, Json 은 프로그램인가요? 어떻게 생긴건가요?
- 폴링과 이벤트 방식의 차이는 무엇인가요?


==================================================================
  PAGE 5  --  웹/앱 개발에서의 프론트엔드와 백엔드 구성  (다이어그램)
==================================================================

```
   +-----------------------------+     +-----------------------------+
   |  FRONTEND                   |     |  BACKEND                    |
   +-----------------------------+     +-----------------------------+
   |  주요 기술                    |     |  주요 기술                    |
   |    HTML / CSS / JavaScript  |     |    Node.js / Python / Java  |
   |    React / Vue.js / Angular |     |    PHP / MySQL / MongoDB    |
   |                             |     |                             |
   |  주요 역할                    |     |  주요 역할                    |
   |    - UI 개발                |     |    - 서버 구축 및 관리         |
   |    - UX 최적화              |     |    - DB 설계 및 관리           |
   |    - 반응형 디자인           |     |    - API 개발 및 문서화        |
   |    - 웹/앱 성능 최적화       |     |    - 보안 및 인증 구현         |
   |    - 브라우저/기기 호환성    |     |    - 비즈니스 로직 처리         |
   +-----------------------------+     +-----------------------------+
                |                                |
                +--<-  API (데이터 교환)  ->--+
                                |
   "두 영역은 API 를 통해 효율적으로 협업하며 완성된 서비스를 제공합니다."
```


==================================================================
  TOPIC INVENTORY  (Plan 2 의 5 group 정합)
==================================================================

```
  GROUP A  자료 구조 + 형식
    - 자료 구조 / XML / Json

  GROUP B  API 의 결
    - API / OpenAPI / REST API / RESTful / Ajax

  GROUP C  코드 단위
    - 함수 / 클래스 / 객체 / 인스턴스 / 모듈 /
      라이브러리 / SDK / 컴포넌트 / 프레임웍

  GROUP D  통신 방식
    - 동기 vs 비동기
    - 폴링 vs 이벤트

  GROUP E  FE / BE 구분
    - FE: HTML / CSS / JS / React (⭐ Kenny) / Vue / Angular
    - BE: Node ⭐ / Python ⭐ / Java / PHP / MySQL / MongoDB
    - 다리: API
```


==================================================================
  KENNY DEEP PICKS  (Plan 2 정합)
==================================================================

```
   FE      React ⭐         구조 / function / 성질 / Hook
   BE      Node.js ⭐       장단점 + 강점 함수 + Newton 매핑
   BE      Python ⭐        장단점 + 강점 함수 + Newton 매핑
   PLUS    CRUD vs HTTP    같은 개념 다른 이름 (POST GET PUT DELETE)

   COMPARE only (한 줄):
     FE   Vue / Angular
     BE   Java / Go / Rust
```


==================================================================
  KENNY ANCHOR  (OOP -> NewtonHQ)
==================================================================

```
  Class            ->  우리 skill (skill 정의)
  Object/instance  ->  skill 호출 시 발화된 자리
  Inheritance      ->  CLAUDE.md cascade
  Method           ->  action flag
  Polymorphism     ->  /j -on -off -team 변종
  Encapsulation    ->  mind/memory cascade hub
  Module           ->  .claude/skills/ 한 폴더
```


==================================================================
  ref
==================================================================
- chapter-1-raw.md       (OneNote COM read -- short, Level 1 만)
- chapter-1-docx.md      (Word pandoc -- 짤림, Level 1 만)
- chapter-1-pdf.md       (이 파일 -- Level 1 + Level 2 본진) ⭐
- images-supplementary.md (Kenny 박은 2 이미지 OCR)
- q.technote.wiki         (Kenny 옛 자리)
