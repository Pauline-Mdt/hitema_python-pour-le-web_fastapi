FROM python:3.10

WORKDIR app

COPY . .

RUN pip install -r requirements.txt

RUN pip install "uvicorn[standard]"

EXPOSE 8000

ENTRYPOINT ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
