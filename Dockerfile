FROM python:3.10-slim

RUN apt-get update &&apt-get install -y \
    git curl build-essential && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
expose 8888

# Run a jupyter notebook server like SageMaker does :
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''"]