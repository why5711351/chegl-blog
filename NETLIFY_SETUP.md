# 🚀 Netlify 部署完成指南

## ✅ 已完成

- [x] Git 仓库初始化
- [x] Netlify 配置文件 (`netlify.toml`) 创建
- [x] `.gitignore` 配置
- [x] Hugo baseURL 更新为 `https://chegl.com/`

---

## 📋 接下来你需要做的（在浏览器中操作）

### 第 1 步：创建 GitHub 仓库

1. 访问 [github.com](https://github.com)
2. 点击右上角 **"+"** → **"New repository"**
3. 填写信息：
   - **Repository name**: `chegl-blog` 或 `techtutorials-pro`
   - **Description**: TechTutorials Pro - AdSense-ready tech blog
   - **Visibility**: Public（公开）
   - ❌ 不要勾选 "Initialize this repository with a README"
4. 点击 **"Create repository"**

---

### 第 2 步：推送代码到 GitHub

复制仓库地址后，在终端执行：

```bash
cd /root/.openclaw/workspace/adsense-blog

# 替换为你的 GitHub 用户名
git remote add origin https://github.com/YOUR_USERNAME/chegl-blog.git

# 重命名分支为 main
git branch -M main

# 推送到 GitHub
git push -u origin main
```

**如果遇到认证问题**，使用个人访问令牌：
```bash
git remote set-url origin https://YOUR_USERNAME:YOUR_TOKEN@github.com/YOUR_USERNAME/chegl-blog.git
git push -u origin main
```

创建 Token：GitHub Settings → Developer settings → Personal access tokens → Generate new token

---

### 第 3 步：在 Netlify 部署

1. **访问 Netlify**
   - 打开 [netlify.com](https://netlify.com)
   - 点击 **"Sign up"** 或 **"Log in"**
   - 使用 GitHub 账号登录（推荐）

2. **添加新站点**
   - 点击 **"Add new site"** → **"Import an existing project"**
   - 选择 **"GitHub"**
   - 授权 Netlify 访问你的 GitHub 账号

3. **选择仓库**
   - 找到并选择你刚创建的仓库（如 `chegl-blog`）
   - 点击 **"Deploy site"**

4. **配置构建设置**（Netlify 会自动从 `netlify.toml` 读取）
   ```
   Build command: hugo --minify --buildFuture
   Publish directory: public
   Production branch: main
   ```

5. **等待部署完成**
   - 大约 1-2 分钟
   - 成功后会显示你的临时域名：`https://random-name.netlify.app`

---

### 第 4 步：绑定自定义域名 chegl.com

1. **进入域名设置**
   - 在 Netlify 仪表板中，点击你的站点
   - 进入 **"Domain settings"**

2. **添加自定义域名**
   - 点击 **"Add custom domain"**
   - 输入 `chegl.com`
   - 点击 **"Verify"** 和 **"Add domain"**

3. **配置 DNS**
   
   Netlify 会显示 DNS 配置说明。你有两个选择：

   **选项 A：使用 Netlify DNS（推荐）**
   - 点击 **"Set up Netlify DNS"**
   - 按照提示将域名的 nameserver 改为 Netlify 提供的地址
   - 例如：
     ```
     dns1.p01.nsone.net
     dns2.p01.nsone.net
     dns3.p01.nsone.net
     dns4.p01.nsone.net
     ```

   **选项 B：手动配置 DNS 记录**
   
   在你的域名注册商处添加：
   ```
   类型：A
   名称：@
   值：75.2.60.5

   类型：CNAME
   名称：www
   值：your-site-name.netlify.app
   ```

4. **启用 HTTPS**
   - Netlify 会自动申请 Let's Encrypt SSL 证书
   - 在 **"HTTPS"** 部分确认状态为 "Active"
   - 启用 **"Force HTTPS"**（强制跳转）

---

### 第 5 步：验证部署

1. **访问临时域名**
   - `https://your-site-name.netlify.app`

2. **访问自定义域名**（DNS 生效后）
   - `https://chegl.com`
   - `https://www.chegl.com`

3. **检查页面**
   - 首页是否正常
   - 文章是否能打开
   - 关于/联系/隐私页面是否存在

---

## 🔧 后续更新内容

每次修改博客内容后：

```bash
cd /root/.openclaw/workspace/adsense-blog

# 重新构建（本地测试）
hugo --minify --buildFuture

# 提交更改
git add .
git commit -m "Add new post: [文章标题]"

# 推送到 GitHub（Netlify 会自动部署）
git push origin main
```

Netlify 会自动检测 GitHub 推送并重新部署，大约 1-2 分钟后生效。

---

## 📊 查看部署日志

在 Netlify 仪表板：
1. 点击你的站点
2. 进入 **"Deploys"** 标签
3. 点击任意部署查看日志
4. 如有错误会在这里显示

---

## 🎯 DNS 生效检查

DNS 更改后，使用以下工具检查：

- [whatsmydns.net](https://whatsmydns.net) - 输入 `chegl.com`
- 或在终端：
  ```bash
  nslookup chegl.com
  dig chegl.com
  ```

通常 5-30 分钟生效，最长 48 小时。

---

## ⚙️ Netlify 功能推荐

### 1. 自动 HTTPS
- ✅ 已自动启用
- 强制 HTTPS 跳转可在 Domain settings 中开启

### 2. 表单处理（Form Handling）
Netlify 自动检测并处理 HTML 表单：
- 在 `<form>` 标签添加 `netlify` 属性
- 提交后在 Netlify 仪表板查看

### 3. 分析（Netlify Analytics）
- 付费功能，$9/月
- 或免费使用 Google Analytics / Fathom

### 4. 密码保护
- 付费功能
- 可用于预览环境

---

## 🆘 常见问题

### Q: 部署失败怎么办？
A: 查看 Deploy logs，常见原因：
- Hugo 版本不匹配 → 检查 `netlify.toml` 中的 `HUGO_VERSION`
- 构建命令错误 → 确保是 `hugo --minify --buildFuture`
- 仓库权限问题 → 确认 Netlify 有访问权限

### Q: 域名绑定后显示错误？
A: 
- 等待 DNS 生效（最多 48 小时）
- 检查 DNS 记录是否正确
- 清除浏览器缓存

### Q: 如何回滚到之前的版本？
A: 
- 在 Netlify Deploys 页面找到之前的成功部署
- 点击 "Publish deploy"

### Q: 可以自定义临时域名吗？
A: 
- 可以！在 Domain settings → "Edit site name"
- 例如改为 `techtutorials-pro.netlify.app`

---

## 📞 需要帮助？

1. **Netlify 文档**: [docs.netlify.com](https://docs.netlify.com)
2. **Hugo 文档**: [gohugo.io](https://gohugo.io)
3. **GitHub 支持**: [support.github.com](https://support.github.com)

---

## ✅ 检查清单

部署完成后确认：

- [ ] GitHub 仓库创建成功
- [ ] 代码已推送
- [ ] Netlify 站点创建
- [ ] 首次部署成功
- [ ] 临时域名可访问
- [ ] 域名 `chegl.com` 已添加
- [ ] DNS 配置完成
- [ ] HTTPS 已启用
- [ ] 所有页面正常显示

---

**完成上述步骤后，你的博客就上线了！🎉**
