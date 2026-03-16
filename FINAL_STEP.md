# ✅ 部署准备完成 - 最后一步推送

## 📋 已完成的工作

| 项目 | 状态 |
|------|------|
| Hugo 博客创建 | ✅ |
| 域名配置 (chegl.com) | ✅ |
| Git 仓库初始化 | ✅ |
| Netlify 配置文件 | ✅ |
| 内容创建（5 篇文章 +5 个页面） | ✅ |
| GitHub 远程仓库配置 | ✅ |

---

## 🎯 最后一步：推送到 GitHub

由于 Git 需要身份验证，你需要在**你的计算机上**执行以下命令：

### 选项 1：使用 GitHub CLI（推荐）

```bash
# 1. 登录 GitHub
gh auth login

# 2. 推送代码
cd /root/.openclaw/workspace/adsense-blog
git push -u origin main
```

### 选项 2：使用 Personal Access Token

1. 访问：https://github.com/settings/tokens
2. 点击 "Generate new token (classic)"
3. Note: `Blog Deploy`
4. Expiration: `No expiration`
5. Select scopes: 勾选 **repo**（全部）
6. 点击 "Generate token" 并复制

```bash
cd /root/.openclaw/workspace/adsense-blog
git remote set-url origin https://why5711351:YOUR_TOKEN@github.com/why5711351/chegl-blog.git
git push -u origin main
```

---

## 🌐 推送成功后

### 1. 验证仓库

访问：https://github.com/why5711351/chegl-blog

确认能看到所有文件。

### 2. Netlify 部署

1. 访问：https://app.netlify.com
2. 使用 GitHub 登录
3. 点击 **"Add new site"** → **"Import an existing project"**
4. 选择 **"GitHub"**
5. 找到并选择 **chegl-blog**
6. 点击 **"Deploy site"**
7. 等待 1-2 分钟

### 3. 绑定域名

1. 在 Netlify 站点页面，点击 **"Domain settings"**
2. 点击 **"Add custom domain"**
3. 输入 `chegl.com`
4. 按照提示配置 DNS

---

## 📁 项目文件位置

```
/root/.openclaw/workspace/adsense-blog/
```

你可以随时在这里修改内容，然后：

```bash
git add .
git commit -m "更新内容"
git push
```

Netlify 会自动重新部署。

---

## 🎉 完成后

你的博客将会：

- **临时 URL**: `https://xxx-xxx.netlify.app`
- **自定义域名**: `https://chegl.com`（DNS 生效后）

---

## ❓ 需要帮助？

如果遇到问题，请告诉我具体的错误信息！

**常见错误及解决：**

- `could not read Username`: 使用 token 或 gh auth login
- `Permission denied`: 检查 token 权限或 SSH key
- `remote origin already exists`: 已配置，直接 push 即可

---

**准备好了吗？选择上面的方式执行推送吧！** 🚀
