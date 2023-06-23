 ## Part 1. Готовый докер ##


Взять официальный докер образ с nginx и выкачать его при помощи docker pull

![ flashern](sc/1.1.png)

Проверить наличие докер образа через docker images

![ flashern](sc/1.2.png)

Запустить докер образ через docker run -d [image_id|repository]

Проверить, что образ запустился через docker ps

![ flashern](sc/1.3.png)

Посмотреть информацию о контейнере через docker inspect [container_id|container_name]

По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера

-  size: 1.09kB (virtual 142MB)
- список замапленных портов

![ flashern](sc/1.5.png)

- ip-add
![ flashern](sc/1.6.png)

Остановить докер образ через docker stop [container_id|container_name]

![ flashern](sc/1.7.png)

Проверить, что образ остановился через docker ps

![ flashern](sc/1.8.png)

Запустить докер с замапленными портами 80 и 443 на локальную машину через команду run

![ flashern](sc/1.9.png)

Проверить, что в браузере по адресу localhost:80 доступна стартовая страница nginx

![ flashern](sc/1.13.png)

Перезапустить докер контейнер через docker restart [container_id|container_name]

Проверить любым способом, что контейнер запустился
![ flashern](sc/1.11.png)



## Part 2. Операции с контейнером ##

Прочитать конфигурационный файл nginx.conf внутри докер образа через команду exec

![ flashern](sc/2.1.png)

Создать на локальной машине файл nginx.conf

Настроить в нем по пути /status отдачу страницы статуса сервера nginx

![ flashern](sc/2.png)

Скопировать созданный файл nginx.conf внутрь докер образа через команду docker cp

![ flashern](sc/2.2.png)

Перезапустить nginx внутри докер образа через команду exec

![ flashern](sc/2.4.png)

Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![ flashern](sc/2.15.png)

Экспортировать контейнер в файл container.tar через команду export

![ flashern](sc/2.6.png)

Остановить контейнер

Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры

Удалить остановленный контейнер
![ flashern](sc/2.7.png)


Импортировать контейнер обратно через команду import

![ flashern](sc/2.10.png)

Запустить импортированный контейнер

![ flashern](sc/2.8.png)

Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![ flashern](sc/2.15.png)









