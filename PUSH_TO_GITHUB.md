# 🚀 推送到 GitHub - 完整步骤

## 当前状态

- ✅ Git 仓库已初始化
- ✅ 远程仓库已配置：`https://github.com/why5711351/chegl-blog.git`
- ✅ 所有文件已提交

---

## 方式一：使用 Personal Access Token（推荐）

### 第 1 步：创建 GitHub Token

1. 访问：https://github.com/settings/tokens
2. 点击 **"Generate new token (classic)"**
3. 填写信息：
   - **Note**: `Netlify Deploy`
   - **Expiration**: No expiration（或选择 90 天）
   - **Select scopes**: 勾选 **`repo`**（全选 repo 下的权限）
4. 点击 **"Generate token"**
5. **复制 Token**（只显示一次，保存好！）

### 第 2 步：推送代码

在终端执行以下命令（替换 `YOUR_TOKEN` 为你刚复制的 token）：

```bash
cd /root/.openclaw/workspace/adsense-blog

# 方式 A：使用 HTTPS 带 token
git remote set-url origin https://why5711351:YOUR_TOKEN@github.com/why5711351/chegl-blog.git
git push -u origin main
```

或者：

```bash
# 方式 B：手动输入（会提示输入密码，粘贴 token）
git remote set-url origin https://why5711351@github.com/why5711351/chegl-blog.git
git push -u origin main
# 输入 Password 时，粘贴你的 token（不会显示字符）
```

---

## 方式二：使用 SSH（如果你配置了 SSH key）

### 第 1 步：检查 SSH key

```bash
ls -la ~/.ssh/id_rsa.pub
```

如果不存在，创建：

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
# 按 Enter 接受默认位置
# 输入 passphrase（可选）
```

### 第 2 步：添加 SSH key 到 GitHub

1. 复制公钥：
   ```bash
   cat ~/.ssh/id_rsa.pub
   ```
2. 访问：https://github.com/settings/keys
3. 点击 **"New SSH key"**
4. 粘贴公钥，点击 **"Add SSH key"**

### 第 3 步：切换为 SSH 并推送

```bash
cd /root/.openclaw/workspace/adsense-blog
git remote set-url origin git@github.com:why5711351/chegl-blog.git
git push -u origin main
```

---

## 方式三：使用 GitHub CLI（最简单）

如果你安装了 `gh` 命令：

```bash
cd /root/.openclaw/workspace/adsense-blog

# 登录 GitHub
gh auth login

# 推送
git push -u origin main
```

如果没有安装 gh：

```bash
# Ubuntu/Debian
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y

# 登录
gh auth login

# 推送
git push -u origin main
```

---

## 推送成功后

你会看到类似输出：

```
Enumerating objects: 114, done.
Counting objects: 100% (114/114), done.
Delta compression using up to 4 threads
Compressing objects: 100% (85/85), done.
Writing objects: 100% (114/114), 123.45 KiB | 2.34 MiB/s, done.
Total 114 (delta 12), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (12/12), done.
To https://github.com/why5711351/chegl-blog.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

---

## 验证推送

访问你的仓库确认：
https://github.com/why5711351/chegl-blog

应该能看到所有文件。

---

## 下一步：Netlify 部署

1. 访问 https://app.netlify.com
2. 登录（使用 GitHub 账号）
3. 点击 **"Add new site"** → **"Import an existing project"**
4. 选择 **"GitHub"**
5. 找到并选择 **`chegl-blog`**
6. 点击 **"Deploy site"**
7. 等待 1-2 分钟，部署完成！

---

## 绑定域名

部署成功后：

1. 点击你的站点
2. 进入 **"Domain settings"**
3. 点击 **"Add custom domain"**
4. 输入 `chegl.com`
5. 按照提示配置 DNS

---

## 需要帮助？

选择一种方式执行推送，遇到问题告诉我具体错误信息！

**推荐顺序：**
1. GitHub CLI（最简单）
2. Personal Access Token（最可靠）
3. SSH（如果你熟悉 SSH）
