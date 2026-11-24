# 源石狂潮 · 网页版

这是一个纯静态 Godot Web 构建，不需要后端。

## 本机游玩

双击 `start_web.bat`，浏览器打开：

http://127.0.0.1:8060/

启动后点击“点击进入战场”。第一次点击用于启用浏览器音频和全屏画布。

## 发布到公网

把整个文件夹上传到任意支持静态文件的托管服务即可：

- Netlify Drop：https://app.netlify.com/drop （直接拖入整个文件夹）
- Cloudflare Pages / GitHub Pages / Vercel 静态站点
- 任意 Nginx/Apache 静态目录

要求：

- 保留 `index.html`、`index.js`、`index.wasm`、`index.pck` 等文件名不变。
- 服务器需要正确返回 `.wasm` 的 `application/wasm` MIME 类型。
- 本项目使用单线程 Web 导出，不需要 COOP/COEP 响应头。
- 建议启用 gzip/brotli 以缩短首次加载时间。

## 文件说明

- `index.html`：自定义启动页（点击进入后启动 Godot）
- `index.js` / `index.wasm`：Godot Web 运行时
- `index.pck`：游戏资源包
- `index.audio.worklet.js`：Web Audio worklet

如果使用 GitHub Pages，把本文件夹内容放到仓库根目录（或 `docs/`），在 Pages 设置里选择对应目录即可。
