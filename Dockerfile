FROM python:3.9
WORKDIR app
RUN pip install pyinstaller

COPY . /app

RUN python calc.py migrate
EXPOSE 8000
CMD ["python","calc.py","runserver","0.0.0.0:8000"]
