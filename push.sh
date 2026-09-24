#!/bin/bash
# 复制最新看板 → commit → push 到 GitHub（供每小时任务调用）
set -e
cd "$HOME/Life/视频转文档看板"
cp "$HOME/Life/视频转文档/Video to Notion 全链路看板.html" .
git add -A
git -c user.name=Jessper2024 -c user.email=jessper@users.noreply.github.com \
    commit -q -m "自动更新看板 $(date '+%Y-%m-%d %H:%M:%S')" 2>/dev/null || true
git -c http.proxy=http://127.0.0.1:7897 -c https.proxy=http://127.0.0.1:7897 \
    -c http.version=HTTP/1.1 push origin main 2>&1 | tail -1
# 同步生成 index.html（GitHub Pages 根链接直接打开）
cp "Video to Notion 全链路看板.html" index.html
