FROM debian:latest

# 安装必要的工具
RUN apt-get update && apt-get install -y curl

# 设置运行脚本的位置
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 在 Docker 容器启动时，entrypoint.sh 是容器的默认入口脚本，它会接收 GitHub Actions 传递的参数或环境变量。
ENTRYPOINT ["/entrypoint.sh"]