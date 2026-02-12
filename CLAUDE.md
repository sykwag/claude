# CLAUDE.md

이 파일은 이 저장소의 코드 작업 시 Claude Code(claude.ai/code)에게 지침을 제공합니다.

## 빠른 참고

### 개발 명령어
- `npm run dev` - http://localhost:3000에서 핫 리로드가 포함된 개발 서버 시작
- `npm run build` - 최적화된 프로덕션 빌드 생성
- `npm run start` - 프로덕션 서버 실행 (먼저 빌드 필요)
- `npm run lint` - ESLint를 실행하여 코드 품질 확인

### 프로젝트 개요
이것은 다음을 사용하는 Next.js 16 애플리케이션입니다:
- **프레임워크**: Next.js 16.1.6 (App Router, src/app 디렉토리)
- **React**: 19.2.3
- **스타일링**: Tailwind CSS 4 with PostCSS
- **언어**: TypeScript 5 (strict mode)
- **린팅**: ESLint 9 (Next.js core web vitals 규칙 포함)

## 아키텍처

### App Router 구조
- `src/app/` 디렉토리에 위치
- `layout.tsx` - 메타데이터 및 Geist 폰트 설정을 포함한 루트 레이아웃
- `page.tsx` - 홈페이지 컴포넌트
- 디렉토리 구조를 통한 중첩 라우트 지원

### 주요 설정
- **TypeScript 경로 별칭**: `@/*`는 `./src/*`로 해석됨
- **React 컴파일러**: `next.config.ts`에서 성능 최적화를 위해 활성화
- **폰트**: Geist Sans 및 Geist Mono (next/font를 통한 Google Fonts)

### 스타일링
- **Tailwind CSS**: `postcss.config.mjs`를 통해 설정
- **전역 스타일**: `src/app/globals.css`
- `dark:` 유틸리티를 통한 다크 모드 지원

## 개발 참고사항

### 새 페이지 생성
- `src/app/` 디렉토리에 `.tsx` 파일 추가 (예: `src/app/about/page.tsx`는 `/about` 라우트 생성)
- Next.js의 `metadata` export를 사용하여 페이지 제목 및 메타 태그 설정
- 상대 경로 간소화를 위해 경로 별칭 `@/` 사용

### TypeScript Strict Mode
- 엄격한 타입 검사가 활성화되어 있으므로 명시적 타입 필요
- React 컴포넌트 props는 `React.ComponentProps<'element'>` 또는 사용자 정의 인터페이스로 타입 지정

### 컴포넌트 패턴
- 모든 컴포넌트는 React 19의 새로운 기능 사용 (필요에 따라 use client/use server 지시문 사용)
- App Router에서는 기본값이 서버 컴포넌트이며, 클라이언트 측 상호작용을 위해 `'use client'` 추가

### ESLint 설정
- ESLint 9 flat config 형식 사용 (`eslint.config.mjs`)
- Next.js core web vitals 및 TypeScript 규칙 확장
- 커밋 전에 `npm run lint` 실행; 모든 위반 사항 해결
