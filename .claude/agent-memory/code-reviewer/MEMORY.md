# Code Reviewer Memory

## Project Tech Stack
- Next.js 16.1.6 with App Router (src/app directory)
- React 19.2.3
- TypeScript 5 (strict mode enabled)
- Tailwind CSS 4 with PostCSS
- ESLint 9 (flat config format)
- Geist fonts (Sans & Mono) via next/font/google

## Common Patterns Observed

### TypeScript Configuration
- Uses strict mode correctly
- Path alias `@/*` maps to `./src/*`
- **Issue found**: JSX transform set to "react-jsx" instead of "preserve" (Next.js requirement)

### Component Patterns
- Server components by default (App Router)
- No explicit return types on component functions (should add)
- Using `Readonly<>` wrapper unnecessarily (props are already readonly)

### Styling Patterns
- Tailwind CSS with custom CSS variables in globals.css
- Dark mode support via `dark:` utilities and `prefers-color-scheme`
- **Issue found**: Fonts loaded but not applied in globals.css
- **Issue found**: Missing tailwind.config.ts despite using Tailwind 4

### Accessibility Issues to Watch
- External links missing aria-labels for new tab indication
- Need to verify color contrast on hover states
- Consider semantic HTML over generic divs

### ESLint & Code Quality
- ESLint 9 flat config properly configured
- All checks passing currently
- Next.js core web vitals rules active

## Project-Specific Decisions
- Using React compiler for automatic optimizations
- Korean language documentation in CLAUDE.md
- Default metadata still using "Create Next App" placeholders

## Files to Reference
- C:\Users\kwags\workspace\claude-nextjs-starters\CLAUDE.md - Project guidelines
- C:\Users\kwags\workspace\claude-nextjs-starters\src\app\globals.css - Global styles and theme
