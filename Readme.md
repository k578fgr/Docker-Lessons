# 3-х часовой курс по Docker для начинающих 

Версия Докера
docker version

Показать список запущенных и остановленных контейнеров
docker ps -a

Показать локальные образы на компе
docker images

Запустить и создать контейнер. Сначала постарается найти контейнер на компе, а потом на Docker-Hub
docker run hello-world

Удалить контейнер
docker rm <id-or-name>

-it = интерактивный терминал
docker run -it busybox

Остановить
docker stop либо exit

Удалить все остановившиеся контейнеры
docker container prune

Запустить в фоновом режиме -d= detached (отсоединённый)
docker run -d ngix

Увидеть детали
docker conteiner inspect <id-or-name>


--name даёт название контейнеру
docker run -d --name my_nginx nginx

8080 - внешний порт, 80 порт контейнера, nginx название образа -p = publish
docker run -p 8080:80 nginx

-v=Подключение тома(volume)
${PWD}=путь к локальной папке
/usr/share/..=путь к папке внутри контейнера
docker run -v${PWD}:/usr/share/nginx/html nginx

В файле .html достаточно добавить один восклицательный знак, чтобы добавить начальные строки кода

Мэппинг томов
Полностью будет выглядеть так
docker run -v ${PWD}:/usr/share/nginx/html -p 8080:80 -d nginx

Остановить контейнер
docker stop <id-or-name>

exec=выполняет команду в запущенном контейнере bash=название процесса
docker exec -it <id> bash

--rm сразу удаляет контейнер
docker run -it --rm busybox

\ <--нужен для перехода
Можно таким образом разбивать команду на строки

```
docker run \
--name my-nginx \
-v ${PWD}:/usr/share/nginx/html \
-p 8888:80
-d \
--rm \
nginx
```

Вывод всей информации
docker container inspect my-ngnix

