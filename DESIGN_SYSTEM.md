# 🎨 TechTutorials Pro 设计系统

## 品牌定位
**科技教育 · 专业友好 · 现代简洁**

---

## 🌈 配色方案

### 方案 A：科技蓝（主推荐）⭐

适合技术博客，传达专业、信任感

```
主色：
- Primary: #3B82F6 (亮蓝)
- Primary Dark: #2563EB (深蓝)
- Primary Light: #93C5FD (浅蓝)

辅助色：
- Accent: #10B981 (翠绿 - 成功/行动)
- Secondary: #8B5CF6 (紫色 - 创意)

中性色：
- Text Primary: #1F2937 (深灰 - 主文本)
- Text Secondary: #6B7280 (中灰 - 次要文本)
- Background: #FFFFFF (纯白)
- Background Alt: #F9FAFB (浅灰 - 背景)
- Border: #E5E7EB (边框)

语义色：
- Success: #10B981
- Warning: #F59E0B
- Error: #EF4444
- Info: #3B82F6
```

### 方案 B：现代暗黑

适合开发者、极客风格

```
主色：
- Primary: #60A5FA (亮蓝)
- Primary Dark: #3B82F6
- Primary Light: #BFDBFE

辅助色：
- Accent: #34D399 (薄荷绿)
- Secondary: #A78BFA (淡紫)

中性色：
- Text Primary: #F9FAFB (浅灰白)
- Text Secondary: #9CA3AF (中灰)
- Background: #111827 (深灰黑)
- Background Alt: #1F2937 (深灰)
- Border: #374151 (深灰边框)

语义色：
- Success: #34D399
- Warning: #FBBF24
- Error: #F87171
- Info: #60A5FA
```

### 方案 C：清新极简

适合干净、清爽的风格

```
主色：
- Primary: #059669 (翡翠绿)
- Primary Dark: #047857
- Primary Light: #6EE7B7

辅助色：
- Accent: #F59E0B (琥珀色)
- Secondary: #EC4899 (粉色)

中性色：
- Text Primary: #111827 (近黑)
- Text Secondary: #6B7280 (中灰)
- Background: #FFFFFF (纯白)
- Background Alt: #F3F4F6 (浅灰)
- Border: #D1D5DB (浅灰边框)

语义色：
- Success: #059669
- Warning: #F59E0B
- Error: #DC2626
- Info: #059669
```

---

## 📝 排版系统

### 字体组合

**英文（网站当前使用）：**

```
主字体（无衬线）：
- font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif

代码字体：
- font-family: 'Fira Code', 'JetBrains Mono', 'Consolas', monospace

备用字体：
- font-family: system-ui, -apple-system, sans-serif
```

**推荐字体加载（Google Fonts）：**
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Fira+Code:wght@400;500&display=swap" rel="stylesheet">
```

### 字号层级

```
显示文本：
- Display XL: 4rem (64px) - 首页大标题
- Display LG: 3rem (48px) - 页面标题
- Display MD: 2.25rem (36px) - 分区标题

标题：
- H1: 2.25rem (36px) - 文章标题
- H2: 1.875rem (30px) - 主要分区
- H3: 1.5rem (24px) - 子分区
- H4: 1.25rem (20px) - 小组标题
- H5: 1.125rem (18px) - 小标题
- H6: 1rem (16px) - 微小标题

正文：
- Body LG: 1.125rem (18px) - 大正文
- Body MD: 1rem (16px) - 标准正文
- Body SM: 0.875rem (14px) - 小字/注释

辅助文本：
- Caption: 0.75rem (12px) - 图注/说明
- Overline: 0.75rem (12px), uppercase - 标签
```

### 行高设置

```
标题：line-height: 1.2 (紧凑)
正文：line-height: 1.6 (舒适阅读)
宽松：line-height: 1.8 (引用/强调)
```

### 字重

```
Light: 300 - 大标题、装饰文本
Regular: 400 - 正文
Medium: 500 - 强调文本、按钮
Semibold: 600 - 小标题、导航
Bold: 700 - 重要强调、CTA
```

---

## 📐 间距系统

基于 8px 网格系统：

```
xs: 0.25rem (4px)
sm: 0.5rem (8px)
md: 1rem (16px)
lg: 1.5rem (24px)
xl: 2rem (32px)
2xl: 3rem (48px)
3xl: 4rem (64px)
4xl: 6rem (96px)
```

---

## 🎭 组件设计规范

### 按钮

```css
/* 主按钮 */
.btn-primary {
  background: var(--primary);
  color: white;
  padding: 0.75rem 1.5rem;
  border-radius: 0.5rem;
  font-weight: 500;
  transition: all 0.2s ease;
}
.btn-primary:hover {
  background: var(--primary-dark);
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(59, 130, 246, 0.4);
}

/* 次要按钮 */
.btn-secondary {
  background: transparent;
  color: var(--primary);
  border: 2px solid var(--primary);
  padding: 0.75rem 1.5rem;
  border-radius: 0.5rem;
  font-weight: 500;
  transition: all 0.2s ease;
}
.btn-secondary:hover {
  background: var(--primary);
  color: white;
}

/* 按钮尺寸 */
.btn-sm { padding: 0.5rem 1rem; font-size: 0.875rem; }
.btn-md { padding: 0.75rem 1.5rem; font-size: 1rem; }
.btn-lg { padding: 1rem 2rem; font-size: 1.125rem; }
```

### 卡片

```css
.card {
  background: var(--background);
  border: 1px solid var(--border);
  border-radius: 0.75rem;
  padding: 1.5rem;
  transition: all 0.3s ease;
}
.card:hover {
  transform: translateY(-4px);
  box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1);
  border-color: var(--primary-light);
}
```

### 导航栏

```css
.navbar {
  background: rgba(255, 255, 255, 0.95);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid var(--border);
  padding: 1rem 2rem;
  position: sticky;
  top: 0;
  z-index: 1000;
}
```

---

## 🎬 动画规范

### 过渡效果

```css
/* 标准过渡 */
.transition {
  transition: all 0.2s ease;
}

/* 平滑过渡 */
.transition-smooth {
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

/* 弹性过渡 */
.transition-bounce {
  transition: all 0.4s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
```

### 关键帧动画

```css
/* 淡入 */
@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

/* 上滑淡入 */
@keyframes slideUpFade {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* 缩放淡入 */
@keyframes scaleIn {
  from {
    opacity: 0;
    transform: scale(0.95);
  }
  to {
    opacity: 1;
    transform: scale(1);
  }
}

/* 闪烁 */
@keyframes shimmer {
  0% { background-position: -1000px 0; }
  100% { background-position: 1000px 0; }
}
```

### 使用示例

```css
.animate-fade-in {
  animation: fadeIn 0.5s ease forwards;
}

.animate-slide-up {
  animation: slideUpFade 0.6s ease forwards;
}

.animate-scale-in {
  animation: scaleIn 0.4s ease forwards;
}
```

---

## 📱 响应式断点

```css
/* 手机 */
@media (max-width: 640px) {
  /* 移动端样式 */
}

/* 平板 */
@media (min-width: 641px) and (max-width: 1024px) {
  /* 平板样式 */
}

/* 桌面 */
@media (min-width: 1025px) {
  /* 桌面样式 */
}

/* 大桌面 */
@media (min-width: 1280px) {
  /* 大桌面样式 */
}
```

### 容器宽度

```
手机：100% (padding: 1rem)
平板：100% (padding: 2rem)
桌面：max-width: 1200px, margin: auto
大桌面：max-width: 1400px, margin: auto
```

---

## 🎯 设计原则

### 1. 一致性
- 使用统一的间距系统
- 保持颜色使用一致
- 组件行为可预测

### 2. 层次清晰
- 通过字号、字重、颜色建立视觉层次
- 重要内容突出显示
- 合理的留白

### 3. 可访问性
- 颜色对比度符合 WCAG AA 标准
- 支持键盘导航
- 语义化 HTML

### 4. 性能优先
- 减少不必要的动画
- 优化图片加载
- 使用 CSS 而非 JS 动画

### 5. 移动优先
- 先设计移动端
- 渐进增强到桌面端
- 触摸友好的交互

---

## 🎨 使用示例

### 首页 Hero 区域

```html
<section class="hero">
  <div class="container">
    <h1 class="hero-title">Learn Tech Skills</h1>
    <p class="hero-subtitle">Professional tutorials for developers</p>
    <div class="hero-cta">
      <a href="/posts" class="btn btn-primary">Start Learning</a>
      <a href="/about" class="btn btn-secondary">Learn More</a>
    </div>
  </div>
</section>
```

### 文章卡片

```html
<article class="card post-card">
  <div class="card-image">
    <img src="/images/post-thumb.jpg" alt="Post thumbnail">
  </div>
  <div class="card-content">
    <span class="tag">Tutorial</span>
    <h3 class="card-title">How to Build a Website</h3>
    <p class="card-excerpt">Complete guide to building modern websites...</p>
    <div class="card-meta">
      <span class="author">By TechTutorials Team</span>
      <span class="date">March 16, 2026</span>
    </div>
  </div>
</article>
```

---

## 📋 检查清单

设计完成后检查：

- [ ] 颜色对比度符合 WCAG AA
- [ ] 所有交互元素有 hover/focus 状态
- [ ] 响应式在所有断点测试通过
- [ ] 动画流畅不卡顿
- [ ] 加载性能优化
- [ ] 移动端触摸友好
- [ ] 键盘导航可用
- [ ] 语义化 HTML 结构

---

**此设计系统为 TechTutorials Pro 的视觉基础，所有页面和组件应遵循此规范。**
