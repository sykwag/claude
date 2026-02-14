# add-component

새로운 React 컴포넌트를 생성합니다.

## 인수 (Arguments)
- `$1`: 컴포넌트 이름 (PascalCase로 입력, 예: Button, UserCard, NavBar)

## 설명
src/components/ 폴더에 TypeScript와 Tailwind CSS를 사용하는 React 함수형 컴포넌트를 생성합니다.

생성되는 파일:
- src/components/{ComponentName}.tsx

생성되는 템플릿:
- React 함수형 컴포넌트 (FC)
- TypeScript 타입 정의
- Tailwind CSS 클래스 예제
- Props 인터페이스 구조

## 예시
```bash
/add-component Button
/add-component UserCard
/add-component NavigationBar
```
