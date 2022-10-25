FROM python:3.10-alpine

WORKDIR /home/proxy_service

COPY . .

RUN pip install -r requirements.txt

CMD ["sh", "main.sh"]