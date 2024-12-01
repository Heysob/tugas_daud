# Menggunakan image Python dari Docker Hub sebagai base image
FROM python:3.9-slim

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin file requirements.txt ke dalam container
COPY requirements.txt /app/

# Menginstal dependensi Python yang diperlukan
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin semua file dari direktori lokal ke dalam container
COPY . /app/

# Menentukan port yang akan digunakan oleh aplikasi (port Flask default adalah 5000)
EXPOSE 8080

# Perintah untuk menjalankan aplikasi Flask
CMD ["python", "app.py"]
