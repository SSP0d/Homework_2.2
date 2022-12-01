# Docker-команда FROM указывает базовый образ контейнера
# Наш базовый образ - это Linux с предустановленным python-3.10
FROM python:3.10

# Установим переменную окружения
ENV APP_HOME /app

# Установим рабочую директорию внутри контейнера
WORKDIR $APP_HOME

# Скопируем остальные файлы в рабочую директорию контейнера
COPY . .

# Установим зависимости внутри контейнера
RUN pip install -r ./Personal_assistance_22/requirements.txt

# Обозначим порт где работает приложение внутри контейнера
# EXPOSE 5000

# Запустим наше приложение внутри контейнера
ENTRYPOINT ["python3 ./Personal_assistance_22/test.py"]
# ENTRYPOINT [ "python3", "run.py" ]