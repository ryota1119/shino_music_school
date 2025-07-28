#!/bin/bash

# 設定
BUILD_DIR="./dist"
BUCKET_NAME="shinomusicschool-static-site"
AWS_REGION="us-east-1" # 例: us-east-1

# エラーチェック
if [ ! -d "$BUILD_DIR" ]; then
  echo "ビルドディレクトリが見つかりません: $BUILD_DIR"
  exit 1
fi

# S3にアップロード
aws s3 sync $BUILD_DIR s3://$BUCKET_NAME --region $AWS_REGION

if [ $? -eq 0 ]; then
  echo "アップロード成功: $BUCKET_NAME"
else
  echo "アップロード失敗"
  exit 1
fi
