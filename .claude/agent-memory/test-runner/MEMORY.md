# 테스트 러너 에이전트 메모리

## 프로젝트 테스트 설정

### 현재 상태
- **프레임워크**: 미설정 (설치 대기 중)
- **권장**: Jest + React Testing Library
- **빌드 도구**: Next.js 16 (내장 테스트 지원)

### 설치 예정 명령어
```bash
npm install --save-dev jest @testing-library/react @testing-library/jest-dom jest-environment-jsdom
npm install --save-dev @types/jest
```

### 테스트 구조
프로젝트에서 사용할 테스트 파일 위치:
- `src/**/__tests__/` - 단위 테스트
- `src/app/**/__tests__/` - 페이지/레이아웃 테스트
- `src/app/api/**/__tests__/` - API 라우트 테스트

---

## 자주 만나는 에러 패턴

(에이전트 사용 중 발견되는 패턴들을 기록합니다)

---

## 테스트 관련 프로젝트 정보

- **TypeScript**: strict mode ✅
- **React**: v19.2.3
- **Next.js**: v16.1.6 (App Router)
- **Tailwind**: v4 (CSS 테스트 주의)

---

## 빠른 참고

### 테스트 실행 명령어 모음
```bash
# 모든 테스트 실행
npm test

# 특정 파일 테스트
npm test -- src/path/file.test.ts

# 감시 모드
npm test -- --watch

# 커버리지 리포트
npm test -- --coverage
```

### 한국어 지침
- ✅ 모든 설명/분석/주석 한국어
- ✅ 테스트 코드 주석도 한국어
- ✅ 에러 분석 결과 한국어
- ✅ 변수/함수명 영어 유지
