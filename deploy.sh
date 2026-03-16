#!/bin/bash
# 推送博客到 GitHub 仓库

cd /root/.openclaw/workspace/adsense-blog

echo "🚀 推送 TechTutorials Pro 到 GitHub..."

# 添加远程仓库
git remote add origin https://github.com/why5711351/chegl-blog.git
echo "✅ 添加远程仓库完成"

# 重命名分支为 main
git branch -M main
echo "✅ 分支重命名为 main"

# 推送到 GitHub
git push -u origin main
echo "✅ 推送完成！"

echo ""
echo "🎉 下一步：访问 Netlify 部署"
echo "1. 打开 https://app.netlify.com"
echo "2. 登录（使用 GitHub 账号）"
echo "3. Add new site → Import existing project → GitHub"
echo "4. 选择 chegl-blog 仓库"
echo "5. 点击 Deploy site"
echo ""
echo "部署完成后绑定域名 chegl.com"
