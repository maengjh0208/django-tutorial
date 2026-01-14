FROM python:3.12-slim

WORKDIR /app

# 필요한 패키지 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY ./djangotutorial .

# Django 개발 서버 포트
EXPOSE 8000

# 개발 서버 실행
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]