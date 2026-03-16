# 🚀 推送到 GitHub - 快速完成

## 你的仓库信息

- **GitHub 用户名**: why5711351
- **仓库名称**: chegl-blog
- **仓库 URL**: https://github.com/why5711351/chegl-blog

---

## 方法 1：使用 GitHub CLI（最简单 ⭐）

### 步骤 1：登录 GitHub

在终端执行：

```bash
gh auth login
```

然后按照提示操作：

1. 选择 **GitHub.com**
2. 选择 **HTTPS**
3. 选择 **Login with a web browser**
4. 复制显示的代码
5. 按 Enter 打开浏览器
6. 粘贴代码并授权
7. 完成后回到终端

### 步骤 2：推送代码

```bash
cd /root/.openclaw/workspace/adsense-blog
git push -u origin main
```

完成！🎉

---

## 方法 2：使用 Personal Access Token

### 步骤 1：创建 Token

1. 访问：https://github.com/settings/tokens
2. 点击 **Generate new token (classic)**
3. Note: 输入 `Blog Deploy`
4. Expiration: 选择 **No expiration**
5. Select scopes: 勾选 **repo**（全选）
6. 点击 **Generate token**
7. **复制 Token**（只显示一次！）

### 步骤 2：推送

```bash
cd /root/.openclaw/workspace/adsense-blog

# 替换 YOUR_TOKEN 为你复制的 token
git remote set-url origin https://why5711351:YOUR_TOKEN@github.com/why5711351/chegl-blog.git
git push -u origin main
```

---

## 验证推送

访问：https://github.com/why5711351/chegl-blog

应该能看到你的博客文件。

---

## 下一步：Netlify 部署

1. 访问 https://app.netlify.com
2. 使用 GitHub 登录
3. Add new site → Import existing project → GitHub
4. 选择 **chegl-blog**
5. 点击 **Deploy site**
6. 等待 1-2 分钟

---

## 需要我现在帮你执行吗？

**推荐使用方法 1**（GitHub CLI），执行以下命令：

```bash
gh auth login
```

然后按照提示完成登录，之后我会帮你推送代码。

或者如果你想手动操作，按照上面的步骤即可！
