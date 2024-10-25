# Использую базовый образ Ubuntu
FROM ubuntu:latest

# Устанока пакетов
RUN apt-get update && apt-get install -y python3

# Устанавливаем рабочую директорию
WORKDIR /app

# Копирка файлов из текущей директории в контейнер
COPY . .

# Указываем команду для выполнения при запуске контейнера
CMD ["python3", "your_script.py"]
