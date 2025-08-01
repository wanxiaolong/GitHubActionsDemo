#!/bin/bash
echo "Running inside Docker container..."
# 输出docker内的环境变量：$INPUT_NAME，这个INPUT_NAME实际上来自action的input.name
echo "Hello: $INPUT_NAME"
# 往$GITHUB_OUTPUT写入一个key=value。
# 这个$GITHUB_OUTPUT是一个GitHub Actions提供的特殊文件路径，用来写入workflow输出的变量。
# 当往这个文件写入内容时，GitHub Actions会把这些内容解析出来并注册为输出的值。workflow中
# 后续的step可以通过${{ steps.<step-id>.outputs.<output-name> }}来访问这个step输出的值
echo "docker-action-output=some_output_value" >> "$GITHUB_OUTPUT"
echo "Goodbye!"