# 域名绑定指南 - chegl.com

## ✅ 已完成配置

- [x] Hugo baseURL 已更新为 `https://chegl.com/`
- [x] 网站已重新构建

---

## 📋 域名绑定步骤

### 第 1 步：选择部署平台

选择一个平台部署你的博客：

#### 选项 A: Netlify（推荐 ⭐）

**优点：** 免费、自动 SSL、部署简单、速度快

**步骤：**

1. **注册 Netlify**
   - 访问 [netlify.com](https://netlify.com)
   - 使用 GitHub 账号登录

2. **创建新站点**
   - 点击 "Add new site" → "Import an existing project"
   - 选择 GitHub
   - 选择你的博客仓库

3. **构建设置**
   ```
   Build command: hugo --minify --buildFuture
   Publish directory: public
   Production branch: main
   ```

4. **绑定域名**
   - 站点部署成功后，进入 "Domain settings"
   - 点击 "Add custom domain"
   - 输入 `chegl.com`
   - 点击 "Verify" 和 "Add domain"

5. **配置 DNS**
   
   在你的域名注册商处（如 GoDaddy、Namecheap 等）添加以下 DNS 记录：

   ```
   类型：A
   名称：@
   值：75.2.60.5
   TTL：自动

   类型：CNAME
   名称：www
   值：your-site-name.netlify.app
   TTL：自动
   ```

   Netlify 会在 "Domain settings" 中显示具体的 DNS 配置值。

6. **启用 HTTPS**
   - Netlify 自动提供免费的 Let's Encrypt SSL 证书
   - 在 "Domain settings" → "HTTPS" 中启用

---

#### 选项 B: Vercel

**优点：** 免费、自动 SSL、全球 CDN

**步骤：**

1. **注册 Vercel**
   - 访问 [vercel.com](https://vercel.com)
   - 使用 GitHub 账号登录

2. **导入项目**
   - 点击 "Add New Project"
   - 选择你的博客仓库
   - Framework Preset: Hugo

3. **构建设置**
   ```
   Build Command: hugo --minify --buildFuture
   Output Directory: public
   ```

4. **绑定域名**
   - 项目部署后，进入 "Settings" → "Domains"
   - 点击 "Add"
   - 输入 `chegl.com`
   - 按照提示配置 DNS

5. **DNS 配置**
   ```
   类型：A
   名称：@
   值：76.76.21.21

   类型：CNAME
   名称：www
   值：cname.vercel-dns.com
   ```

---

#### 选项 C: GitHub Pages

**优点：** 完全免费、与 GitHub 集成

**步骤：**

1. **推送代码到 GitHub**
   ```bash
   cd /root/.openclaw/workspace/adsense-blog
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/chegl-blog.git
   git push -u origin main
   ```

2. **启用 GitHub Pages**
   - 进入仓库 Settings → Pages
   - Source: Deploy from a branch
   - Branch: main / Folder: / (root)
   - 或者使用 gh-pages 分支

3. **绑定域名**
   - 在 Pages 设置中找到 "Custom domain"
   - 输入 `chegl.com`
   - 点击 "Save"

4. **创建 CNAME 文件**
   ```bash
   echo "chegl.com" > /root/.openclaw/workspace/adsense-blog/static/CNAME
   ```

5. **DNS 配置**
   ```
   类型：A
   名称：@
   值：185.199.108.153
        185.199.109.153
        185.199.110.153
        185.199.111.153

   类型：CNAME
   名称：www
   值：yourusername.github.io
   ```

6. **启用 HTTPS**
   - 在 Pages 设置中勾选 "Enforce HTTPS"

---

#### 选项 D: VPS/传统主机

**如果你有 VPS 服务器：**

1. **上传网站文件**
   ```bash
   # 使用 scp 或 rsync 上传 public 目录
   scp -r public/* user@your-server:/var/www/chegl.com/
   ```

2. **Nginx 配置**
   ```nginx
   server {
       listen 80;
       server_name chegl.com www.chegl.com;
       root /var/www/chegl.com;
       index index.html;

       # 重定向到 HTTPS（配置 SSL 后）
       # return 301 https://$server_name$request_uri;

       location / {
           try_files $uri $uri/ =404;
       }

       # 静态资源缓存
       location ~* \.(css|js|png|jpg|jpeg|gif|svg|ico|woff|woff2)$ {
           expires 1y;
           add_header Cache-Control "public, immutable";
       }
   }
   ```

3. **配置 SSL（Let's Encrypt 免费）**
   ```bash
   # 安装 Certbot
   sudo apt install certbot python3-certbot-nginx

   # 获取证书
   sudo certbot --nginx -d chegl.com -d www.chegl.com
   ```

4. **DNS 配置**
   
   在域名注册商处设置：
   ```
   类型：A
   名称：@
   值：你的服务器 IP

   类型：A
   名称：www
   值：你的服务器 IP
   ```

---

## 🔍 DNS 配置详解

### 在哪里配置 DNS？

登录你的域名注册商后台：

- **GoDaddy**: myaccount.godaddy.com
- **Namecheap**: namecheap.com
- **Cloudflare**: cloudflare.com（推荐）
- **阿里云**: dns.console.aliyun.com
- **腾讯云**: dns.console.cloud.tencent.com

### 推荐：使用 Cloudflare

**优点：** 免费 CDN、DDoS 保护、DNS 管理方便

1. **注册 Cloudflare**
   - 访问 [cloudflare.com](https://cloudflare.com)
   - 添加网站 `chegl.com`

2. **更改域名服务器**
   - Cloudflare 会提供两个 nameserver
   - 在你的域名注册商处将 nameserver 改为 Cloudflare 的

3. **添加 DNS 记录**
   - 根据你选择的部署平台添加相应记录

4. **启用 SSL/TLS**
   - 选择 "Full" 或 "Flexible" 模式
   - 启用 "Always Use HTTPS"

---

## ⏱️ DNS 生效时间

- **通常：** 5 分钟 - 2 小时
- **最长：** 48 小时
- **检查工具：** [whatsmydns.net](https://whatsmydns.net)

---

## ✅ 验证域名绑定

### 1. 检查 DNS 是否生效

```bash
# 检查 A 记录
nslookup chegl.com

# 检查 CNAME
nslookup www.chegl.com
```

或访问 [whatsmydns.net](https://whatsmydns.net) 输入 `chegl.com` 查看全球 DNS 传播情况。

### 2. 访问网站

- http://chegl.com
- http://www.chegl.com

### 3. 检查 HTTPS

配置 SSL 后访问：
- https://chegl.com
- https://www.chegl.com

---

## 🔧 部署后更新网站

每次修改内容后：

```bash
# 1. 重新构建
cd /root/.openclaw/workspace/adsense-blog
hugo --minify --buildFuture

# 2. 提交更改
git add .
git commit -m "Update content"

# 3. 推送到 GitHub
git push origin main

# 4. 部署平台会自动部署（Netlify/Vercel/GitHub Pages）
```

---

## 📊 部署平台对比

| 平台 | 价格 | SSL | CDN | 易用性 | 推荐度 |
|------|------|-----|-----|--------|--------|
| Netlify | 免费 | ✅ | ✅ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Vercel | 免费 | ✅ | ✅ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| GitHub Pages | 免费 | ✅ | ✅ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| Cloudflare Pages | 免费 | ✅ | ✅ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| VPS | 付费 | 需配置 | 需配置 | ⭐⭐⭐ | ⭐⭐⭐ |

---

## 🎯 推荐方案

**最简单方案：** Netlify + Cloudflare DNS

1. 在 Netlify 部署网站
2. 使用 Cloudflare 管理 DNS
3. 自动 SSL，无需配置

**完全免费方案：** GitHub Pages + Cloudflare

1. 推送到 GitHub
2. 启用 GitHub Pages
3. 使用 Cloudflare 加速和保护

---

## ❓ 下一步

请告诉我你选择哪个部署平台，我可以帮你：

1. 配置 Git 仓库
2. 设置自动部署
3. 完成域名绑定
4. 启用 HTTPS

---

**需要帮助吗？告诉我你选择的平台！** 🚀
