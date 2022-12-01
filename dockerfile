# Docker-команда FROM указывает базовый образ контейнера
# Наш базовый образ - это Linux с предустановленным python-3.10
FROM python:3.10

# Установим переменную окружения
# ENV APP_HOME /app

# Установим рабочую директорию внутри контейнера
WORKDIR /app/Personal_assistance_22

# Скопируем остальные файлы в рабочую директорию контейнера
COPY . /app

# Установим зависимости внутри контейнера
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Обозначим порт где работает приложение внутри контейнера
# EXPOSE 5000
CMD ["python", "test.py"]
# Запустим наше приложение внутри контейнера
# ENTRYPOINT ["python3 ./Personal_assistance_22/test.py"]
# ENTRYPOINT [ "python3", "run.py" ]
