## Phlox Calcit Guide Book

开发使用配对的 Calcit CLI 和 `@calcit/procs` 0.40.0，并从正式标签解析 Docs Workflow 0.1.0 与 Reel 0.11.0。更新依赖后重新生成前端。

这是文档站的升级，不代表 Phlox 工作流或所有文档片段均已通过 0.38 验收。
新应用请从维护中的 [Phlox workflow](https://github.com/Phlox-GL/phlox-workflow)
开始，核对它自己的版本合同。Guide 区分单 Enum 应用 dispatch 与 widget dispatch，
保留 Ref、宿主边界和 `hud!` 页面报错说明。历史章节需逐段核对，构建通过不能代替
所有示例的运行验证。

### 开发与门禁

Node 24、Yarn 4.18.0 和正式 Calcit 0.40.0。

```sh
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit calcit.cirru js
corepack yarn vite
```

文档导航直接派发具名 `docs-workflow.schema/Op`。Reel 面板和快捷键通过独立回调接收 `reel.typed/Control`。

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
