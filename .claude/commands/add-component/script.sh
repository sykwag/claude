#!/bin/bash

# add-component script
# Creates a new React component with TypeScript and Tailwind CSS

if [ -z "$1" ]; then
  echo "오류: 컴포넌트 이름을 입력해주세요."
  echo "사용법: add-component <ComponentName>"
  exit 1
fi

COMPONENT_NAME="$1"
COMPONENT_DIR="src/components"
FILE_PATH="$COMPONENT_DIR/$COMPONENT_NAME.tsx"

# 디렉토리 생성 (없는 경우)
mkdir -p "$COMPONENT_DIR"

# 파일이 이미 존재하는지 확인
if [ -f "$FILE_PATH" ]; then
  echo "오류: $FILE_PATH 파일이 이미 존재합니다."
  exit 1
fi

# 컴포넌트 템플릿 생성
cat > "$FILE_PATH" << 'EOF'
import React from 'react';

interface ${COMPONENT_NAME}Props {
  // Props를 여기에 추가해주세요
}

export const ${COMPONENT_NAME}: React.FC<${COMPONENT_NAME}Props> = () => {
  return (
    <div className="flex items-center justify-center min-h-screen bg-gray-100">
      <div className="bg-white rounded-lg shadow-lg p-8">
        <h1 className="text-2xl font-bold text-gray-800 mb-4">
          ${COMPONENT_NAME} Component
        </h1>
        <p className="text-gray-600">
          이 컴포넌트를 수정해서 사용하세요.
        </p>
      </div>
    </div>
  );
};

export default ${COMPONENT_NAME};
EOF

# 템플릿의 ${COMPONENT_NAME} 부분을 실제 컴포넌트 이름으로 대체
sed -i "s/\${COMPONENT_NAME}/$COMPONENT_NAME/g" "$FILE_PATH"

echo "✅ 컴포넌트가 생성되었습니다: $FILE_PATH"
