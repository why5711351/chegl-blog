# TechTutorials Pro - AdSense 盈利博客

一个使用 Hugo + PaperMod 主题构建的快速、SEO 友好的英文博客网站，专为 AdSense 盈利和 SEO 流量设计。

## 📁 项目结构

```
adsense-blog/
├── content/
│   ├── posts/          # 博客文章
│   └── pages/          # 静态页面（About, Contact, Privacy 等）
├── themes/
│   └── PaperMod/       # 主题
├── public/             # 构建输出（部署这个目录）
├── hugo.toml           # 网站配置
└── README.md           # 本文件
```

## ✅ 已创建内容

### 静态页面（AdSense 审核必需）
- [x] About Us（关于我们）
- [x] Contact Us（联系我们）
- [x] Privacy Policy（隐私政策）
- [x] Terms of Service（服务条款）
- [x] Disclaimer（免责声明）

### 博客文章（5 篇初始文章）
1. How to Install VS Code Extensions
2. Python for Beginners
3. Git Basics for Beginners
4. How to Build a Website with HTML and CSS
5. Google AdSense Approval Checklist

## 🚀 本地开发

### 启动开发服务器

```bash
cd /root/.openclaw/workspace/adsense-blog
hugo server --buildFuture -D
```

访问：http://localhost:1313

### 构建生产版本

```bash
hugo --minify --buildFuture
```

输出目录：`public/`

## 🌐 部署选项

### 选项 1: GitHub Pages（免费推荐）

1. 创建 GitHub 仓库
2. 推送代码：
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/yourrepo.git
git push -u origin main
```

3. 在 GitHub 设置中启用 GitHub Pages
4. 选择 `main` 分支和 `/public` 文件夹（或使用 gh-pages 分支）

### 选项 2: Netlify（免费推荐）

1. 在 [Netlify](https://netlify.com) 注册
2. 连接 GitHub 仓库
3. 构建设置：
   - Build command: `hugo --minify --buildFuture`
   - Publish directory: `public`
4. 部署！

### 选项 3: Vercel（免费）

1. 在 [Vercel](https://vercel.com) 注册
2. 导入 GitHub 仓库
3. 自动检测 Hugo 并部署

### 选项 4: 传统主机/VPS

将 `public/` 目录内容上传到 web 服务器（如 nginx/Apache）的根目录。

**Nginx 配置示例：**
```nginx
server {
    listen 80;
    server_name yourdomain.com;
    root /var/www/adsense-blog/public;
    index index.html;
    
    # SSL（推荐）
    # listen 443 ssl;
    # ssl_certificate /path/to/cert.pem;
    # ssl_certificate_key /path/to/key.pem;
    
    location / {
        try_files $uri $uri/ =404;
    }
}
```

## 📝 添加新文章

```bash
# 创建新文章
hugo new posts/your-article-title.md
```

编辑文件，确保设置 `draft: false`，然后重新构建。

## 🔧 AdSense 配置

### 审核前准备

1. ✅ 完成所有必需页面
2. ✅ 发布 20-30 篇高质量文章
3. ✅ 确保网站有 1-3 个月运营历史
4. ✅ 有稳定自然流量

### 审核通过后

1. 在 `hugo.toml` 中添加 AdSense 代码：
```toml
[params]
  googleAdsense = 'ca-pub-XXXXXXXXXXXXXXXX'
```

2. 在主题配置中启用广告位
3. 重新构建并部署

## 📈 SEO 优化清单

- [ ] 提交 sitemap.xml 到 Google Search Console
- [ ] 设置 Google Analytics
- [ ] 优化每篇文章的 meta description
- [ ] 添加内部链接
- [ ] 确保移动端友好
- [ ] 优化页面加载速度
- [ ] 使用 SSL（HTTPS）

## 🎨 自定义主题

编辑 `hugo.toml` 中的 `[params]` 部分：

```toml
[params]
  title = 'Your Site Title'
  description = 'Your site description'
  
  # 社交链接
  [[params.socialIcons]]
    name = 'twitter'
    url = 'https://twitter.com/yourhandle'
  
  [[params.socialIcons]]
    name = 'github'
    url = 'https://github.com/yourusername'
```

## 📊 内容策略（AdSense 审核）

### 第 1-2 周
- 搭建网站
- 发布 5-10 篇基础文章

### 第 3-6 周
- 每周发布 3-5 篇文章
- 目标：20-30 篇高质量文章
- 开始 SEO 优化

### 第 7-8 周
- 继续内容创作
- 建立外部链接
- 积累自然流量

### 第 9-12 周
- 申请 AdSense
- 等待审核（2 天 -2 周）
- 审核通过后添加广告

## 🛠️ 常用命令

```bash
# 本地开发
hugo server --buildFuture -D

# 构建生产版本
hugo --minify --buildFuture

# 查看内容列表
hugo list all

# 创建新文章
hugo new posts/article-title.md

# 更新主题
cd themes/PaperMod && git pull
```

## 📚 相关资源

- [Hugo 文档](https://gohugo.io/documentation/)
- [PaperMod 主题文档](https://adityatelange.github.io/hugo-PaperMod/)
- [AdSense 政策](https://support.google.com/adsense/answer/48182)
- [Google Search Console](https://search.google.com/search-console)

## ⚠️ 重要提醒

1. **不要点击自己的广告** - 会导致账号被封
2. **内容必须原创** - 抄袭会导致 AdSense 拒绝
3. **遵守 AdSense 政策** - 禁止成人、赌博、暴力等内容
4. **耐心等待审核** - 新站通常需要 1-3 个月才能通过

## 📞 支持

如有问题，请查看：
- Hugo 官方文档
- PaperMod 主题 Issues
- Google AdSense 帮助中心

---

**祝你的博客成功！🎉**
