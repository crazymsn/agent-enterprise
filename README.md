# 深度云创科技 · 企业级 Agent 部署解决方案

深度云创科技企业级智能体系统官网，展示智能体应用、知识库管理、可视化工作流、数据结构化、技能树、Open Code、Codex Harness 执行引擎及私有化部署能力。

## 功能亮点

- 深色宽版产品级视觉模块，适配桌面端与移动端
- 核心痛点、核心优势、能力中心、产品预览四段式内容结构
- 13 张 Agent 产品界面轮播，支持左右切换、指示点和自动循环
- 产品图库自动发现：新增图片后无需修改 HTML 清单
- GitHub 仓库入口与技术文档入口
- 基于 Nginx 的轻量静态站点，支持 Docker Compose 一键运行

## 快速启动

### Docker Compose

```bash
docker compose -p official-site up -d
```

启动后访问：<http://localhost:8080/>

停止服务：

```bash
docker compose -p official-site down
```

如果本机 8080 端口已占用，可编辑 `docker-compose.yml`，将端口映射改为其他端口，例如 `18080:80`。

### 使用 Docker Hub 镜像

```bash
docker pull crazymsn/agent-enterprise:latest
docker run -d --name official-site -p 8080:80 --restart unless-stopped crazymsn/agent-enterprise:latest
```

## 产品图管理

产品图放在 `Agent 产品图/` 目录。网页会自动读取目录中的 PNG、JPG、WEBP、GIF 和 SVG 文件，并生成轮播内容。

当前优先播放顺序：

```text
0.png → 11.png → 3.png → 1.png → 4.png → 8.png → 2.png → 9.png → 10.png → 12.png → 5.png → 6.png → 7.png
```

后续新增图片会自动追加到轮播末尾。使用 Docker 部署时，新增图片后重新构建镜像：

```bash
docker compose -p official-site build
docker compose -p official-site up -d
```

## 项目结构

```text
企业级智能体系统.html  # 官网单页及交互逻辑
Agent 产品图/           # Agent 产品截图资源
logo-transparent.png    # DeepCloud Logo
Dockerfile              # Nginx 镜像构建配置
docker-compose.yml      # Compose 部署配置
nginx.conf              # 静态站点与图库目录索引配置
.dockerignore           # Docker 构建忽略项
```

## 镜像信息

- 镜像：`crazymsn/agent-enterprise:latest`
- 默认容器端口：`80`
- Compose 主机端口：`8080`

## 相关链接

- GitHub：<https://github.com/crazymsn/agent-enterprise>
- 技术文档：<https://my.feishu.cn/wiki/DmxwwFCISiDsg8kmF5Pc48SCn0d>
