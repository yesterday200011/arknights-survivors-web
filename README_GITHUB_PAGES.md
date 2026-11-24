# 上传到 GitHub Pages

本目录已经是完整的静态网页构建，`index.html` 必须位于仓库根目录。

## 推荐：GitHub Desktop（无需命令行）

1. 安装并登录 GitHub Desktop。
2. 新建仓库：
   - Name: `arknights-survivors-web`
   - Local path: `D:\dsh games`
   - 仓库目录会变成 `D:\dsh games\arknights-survivors-web`
3. 把本目录（`arknights_survivors_web`）里的**所有文件**复制到新仓库目录，确保：
   - `D:\dsh games\arknights-survivors-web\index.html`
   - `D:\dsh games\arknights-survivors-web\index.wasm`
   - `D:\dsh games\arknights-survivors-web\.nojekyll`
4. GitHub Desktop 中写提交信息 `Deploy web build`，点击 **Commit to main**。
5. 点击 **Publish repository**：
   - 仓库必须是 **Public**（免费 GitHub Pages 要求公开仓库）。
6. 打开 GitHub 网页 → 仓库 **Settings** → **Pages**：
   - Source: **Deploy from a branch**
   - Branch: **main**
   - Folder: **/ (root)**
   - 点击 **Save**
7. 等待 1~3 分钟，地址为：
   `https://<你的用户名>.github.io/arknights-survivors-web/`

## 命令行方式

先安装 Git for Windows：https://git-scm.com/download/win

在 GitHub 网页先创建一个空仓库，然后在 PowerShell 中执行：

```powershell
cd "D:\dsh games\arknights_survivors_web"
git init
git add .
git commit -m "Deploy web build"
git branch -M main
git remote add origin https://github.com/<用户名>/<仓库名>.git
git push -u origin main
```

如果 Git 提示登录，选择浏览器授权即可。`index.wasm` 约 39.5 MB，低于 GitHub 单文件 100 MB 限制，不需要 Git LFS。

推送后再到 **Settings → Pages** 选择 `main` / `/ (root)`。

## 注意

- 不要把整个 `arknights_survivors` 工程上传；只上传本目录里的文件。
- 网页使用单线程 Godot Web 导出，不需要 COOP/COEP 响应头。
- GitHub 网页版“拖拽上传”对单个文件有约 25 MB 限制，`index.wasm` 为 39.5 MB，建议用 GitHub Desktop 或 Git 命令行。
- 首次打开需要下载约 43 MB，加载会比本地慢；点击“点击进入战场”启用音频。
- 免费 GitHub Pages 要求仓库公开，站点有 1 GB 容量与带宽软限制。
