# Video to Notion 全链路看板

「视频 → 文档 → Notion」一条业务链路的融合看板（单一状态机）。

- 每篇文档唯一阶段：**缺稿 → 待加标点 → 待精校 → 待同步 → 已同步**
- 完成率 = 已同步 / 总数（精校后且上传 Notion 同步，才算完成）
- 由 `run.py board` 生成，每小时自动刷新

看板文件：`Video to Notion 全链路看板.html`
