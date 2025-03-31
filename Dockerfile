FROM python:3.10

WORKDIR /app
COPY . /app
RUN  sudo apt update && sudo apt install llvm-dev
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt
RUN pip install numba
RUN pip install geopy


CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]