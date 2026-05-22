# استفاده از نسخه سبک پایتون
FROM python:3.10-slim

# تنظیم دایرکتوری کاری
WORKDIR /app

# کپی فایل نیازها و نصب آن‌ها
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# کپی بقیه کدهای پروژه
COPY . .

# اجرای برنامه با Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
