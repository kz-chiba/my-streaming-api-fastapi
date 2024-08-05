# ベースイメージとして公式のPythonイメージを使用
FROM python:3.9-slim

# 作業ディレクトリを作成
WORKDIR /app

# 必要なファイルをコンテナ内にコピー
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# アプリケーションを起動する
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
