FROM python

WORKDIR /app
#Из текущего образа в текущий образ
COPY . .

CMD ["python", "index.py"]


