## Phlox Calcit Guide Book

站点配对正式 Calcit CLI / `@calcit/procs` 0.31.0 与已发布 Docs Workflow 0.0.38。
升级后重装完整依赖图并刷新页面。Docs Workflow 的 Respo/Reel/UI 依赖仍含 alpha，
正式工具链不代表模块图全部稳定；UI 升级可能影响外观。站点使用 `calcit.cirru` /
`deps.cirru`，不恢复 compact/package.cirru，也不提交生成的 js-out。

这是文档站的升级，不代表 Phlox 工作流或所有文档片段均已通过 0.31 验收。
新应用请从维护中的 [Phlox workflow](https://github.com/Phlox-GL/phlox-workflow)
开始，核对它自己的版本合同。Guide 区分单 Enum 应用 dispatch 与 widget dispatch，
保留 Ref、宿主边界和 `hud!` 页面报错说明。历史章节需逐段核对，构建通过不能代替
所有示例的运行验证。

### 开发与门禁

Node 24、Yarn 4.18.0 和正式 Calcit 0.31.0：

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
非 Enum 拒绝、业务 cursor/Store 解码以及具名 Op 构造保留；全部 15 个定义、schema、
imports 和文档节点层级未改。仍使用 Docs Workflow 的名义 DocNode/Store/Op/Reel
合同，保留 60 秒 Map 存档写入与禁用的恢复行为。`hud!` 和 GLSL 注册行为保持。
没有附带测试，不把零测试当作业务覆盖；浏览器导航、Quick Jump 和刷新需实际验收。

原 CI 的 Caps/immutable/toolchain、全定义、公开入口、完整 strict、SPA/mdBook 构建
保持，不关闭证明审计或放宽类型预算。Yarn 按维护者确认使用一小时依赖等待期。

### 前端部署

原工作流保存 SPA/mdBook 产物，PR COS 使用独立编号/run/attempt 前缀及 action
内置 verify；不增加重复校验脚本。PR 不运行生产 rsync，不自动合并或发版。
原服务目录及单独的 `mdbook.html` 路径保持，COS 仅针对前端资源。

```sh
cargo install mdbook
cargo install mdbook-linkcheck
mdbook build
```

### License

MIT
