FROM python:3.9

WORKDIR /app

COPY /app /app
COPY /app/main.py ${LAMBDA_TASK_ROOT}

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt


# CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8080"]
CMD [ "main.app" ]