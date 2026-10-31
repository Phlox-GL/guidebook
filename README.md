## Phlox Calcit Guide Book

使用者注意：本轮将站点 Calcit CLI / `@calcit/procs` 从 **0.31.0** 同步到正式 **0.32.1**，使用已发布 Docs Workflow **0.0.40**。升级后重装完整精确依赖图并刷新页面，UI 样式可能变化。传递图中的 Reel **0.7.0-alpha.5**、Alerts **0.11.0-alpha.4**、Markdown **0.5.0-alpha.5**、Router **0.9.0-alpha.4** 仍是已发布 alpha，不声称全图均为正式版。源码使用 `calcit.cirru` / `deps.cirru`，不恢复 compact/package.cirru，也不提交生成的 js-out。

这是文档站的升级，不代表 Phlox 工作流或所有文档片段均已通过 0.32 验收。
新应用请从维护中的 [Phlox workflow](https://github.com/Phlox-GL/phlox-workflow)
开始，核对它自己的版本合同。Guide 区分单 Enum 应用 dispatch 与 widget dispatch，
保留 Ref、宿主边界和 `hud!` 页面报错说明。历史章节需逐段核对，构建通过不能代替
所有示例的运行验证。

### 开发与门禁

Node 24、Yarn 4.18.0 和正式 Calcit 0.32.1：

```sh
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit calcit.cirru js
corepack yarn vite
```

应用默认 entry 的 dispatch-op 对应原有 `Fn<Dynamic,Unit>` renderer 宿主入口。
非 Enum 拒绝、业务 cursor/Store 解码以及具名 Op 构造保留；13 个定义的 schema、imports 和文档节点层级保持。
官方 formatter 迁移 main!/reload!/render-app! 中 4 处类型提示，原业务表达式不变。仍使用 Docs Workflow 的名义 DocNode/Store/Op/Reel
合同，保留 60 秒 Map 存档写入与禁用的恢复行为。`hud!` 和 GLSL 注册行为保持。
没有附带测试，不把零测试当作业务覆盖；浏览器导航、Quick Jump 和刷新需实际验收。

原 CI 的 Caps/immutable/toolchain、全定义、公开入口、完整 strict、SPA/mdBook 构建
保持，不关闭证明审计或放宽类型预算。npm 新版本解析按统一一小时包龄门禁执行，无包级豁免；已有 lock 的 immutable 重放不会逐次重查包龄。

### 前端部署

SPA 与 mdBook 先归集到 `dist/`：SPA 保留 `index.html`，书籍首页仍为 `mdbook.html`。COS 仅上传这份前端目录，以一次 action 内置 verify 完成；PR 使用独立编号/run/attempt 前缀。一次原路径 rsync 发布完整前端，替代重复上传/rsync；不增加校验脚本。PR 不运行生产 rsync，不自动合并或发版。
原服务目录及单独的 `mdbook.html` 路径保持，COS 仅针对前端资源。

```sh
# 与 CI 对齐 mdbook 0.4.14 / mdbook-linkcheck 0.7.6
mdbook build
```

已知 mdBook Cirru 高亮会回退到纯文本，见 [Docs Workflow #95](https://github.com/calcit-lang/docs-workflow/issues/95)；本次不声称修复。

### License

MIT
