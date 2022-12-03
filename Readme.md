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

Уберёт все остановившиеся контейнеры
docker container prune