# 🚀 快速部署清单

## ✅ 我们已帮你完成

- [x] Hugo 博客创建
- [x] 域名配置为 `chegl.com`
- [x] Git 仓库初始化
- [x] Netlify 配置文件创建 (`netlify.toml`)
- [x] `.gitignore` 配置
- [x] 5 篇 AdSense 友好文章
- [x] 5 个必需页面（About/Contact/Privacy/Terms/Disclaimer）

---

## 📋 你需要做的（5 分钟完成）

### 1️⃣ 创建 GitHub 仓库（1 分钟）

1. 访问 [github.com](https://github.com)
2. 点击右上角 **"+"** → **"New repository"**
3. 名称：`chegl-blog`
4. 设为 **Public**
5. 点击 **"Create repository"**

---

### 2️⃣ 推送代码到 GitHub（1 分钟）

复制以下命令，替换 `YOUR_USERNAME` 为你的 GitHub 用户名：

```bash
cd /root/.openclaw/workspace/adsense-blog

# 添加远程仓库（替换 YOUR_USERNAME）
git remote add origin https://github.com/YOUR_USERNAME/chegl-blog.git

# 重命名分支
git branch -M main

# 推送
git push -u origin main
```

**如果遇到认证错误**，创建 GitHub Token：
- GitHub → Settings → Developer settings → Personal access tokens → Generate new token
- 勾选 `repo` 权限
- 复制 token，在推送命令中使用：
```bash
git remote set-url origin https://YOUR_USERNAME:YOUR_TOKEN@github.com/YOUR_USERNAME/chegl-blog.git
git push -u origin main
```

---

### 3️⃣ 在 Netlify 部署（2 分钟）

1. **登录 Netlify**
   - 访问 [netlify.com](https://netlify.com)
   - 使用 GitHub 账号登录

2. **添加站点**
   - 点击 **"Add new site"** → **"Import an existing project"**
   - 选择 **"GitHub"**
   - 选择 `chegl-blog` 仓库
   - 点击 **"Deploy site"**

3. **等待部署**
   - 约 1-2 分钟
   - 成功后显示：`https://xxx-xxx-xxx.netlify.app`

---

### 4️⃣ 绑定域名 chegl.com（1 分钟）

1. 在 Netlify 站点页面，点击 **"Domain settings"**
2. 点击 **"Add custom domain"**
3. 输入 `chegl.com`，点击 **"Verify"** → **"Add domain"**
4. 同样添加 `www.chegl.com`

5. **配置 DNS**（二选一）

   **选项 A：使用 Netlify DNS（推荐）**
   - 点击 **"Set up Netlify DNS"**
   - 在你的域名注册商处将 nameserver 改为 Netlify 提供的地址
   - 例如：
     ```
     dns1.p01.nsone.net
     dns2.p01.nsone.net
     dns3.p01.nsone.net
     dns4.p01.nsone.net
     ```

   **选项 B：手动配置 DNS 记录**
   - 在域名注册商处添加：
     ```
     类型：A
     名称：@
     值：75.2.60.5
     
     类型：CNAME
     名称：www
     值：xxx-xxx-xxx.netlify.app（替换为你的 Netlify 域名）
     ```

6. **启用 HTTPS**
   - 等待 DNS 生效（5-30 分钟）
   - 在 Netlify 点击 **"Verify DNS configuration"**
   - 启用 **"Force HTTPS"**

---

## ✅ 完成检查

访问以下网址确认：

- [ ] https://chegl.com
- [ ] https://www.chegl.com
- [ ] 首页正常显示
- [ ] 文章可以打开
- [ ] About/Contact/Privacy 页面存在

---

## 🔄 后续更新内容

每次添加新文章后：

```bash
cd /root/.openclaw/workspace/adsense-blog

# 构建并测试（可选）
hugo --minify --buildFuture

# 提交
git add .
git commit -m "Add new post: [标题]"

# 推送（Netlify 自动部署）
git push origin main
```

---

## 📊 重要链接

- **Netlify 仪表板**: [app.netlify.com](https://app.netlify.com)
- **GitHub 仓库**: [github.com](https://github.com)
- **DNS 检查**: [whatsmydns.net](https://whatsmydns.net)
- **详细指南**: 查看 `NETLIFY_SETUP.md`

---

## 🆘 需要帮助？

遇到问题？检查：

1. **部署失败** → Netlify → Deploys → 查看日志
2. **域名不生效** → 等待 DNS 传播，检查 DNS 记录
3. **推送失败** → 检查 GitHub token 权限

---

**完成上述步骤后，你的博客就上线了！🎉**

下一步：继续添加内容，目标 20-30 篇文章后申请 AdSense。
