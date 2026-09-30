FROM debian:bookworm-slim

# به‌روزرسانی مخازن و نصب microsocks
RUN apt-get update && \
    apt-get install -y --no-install-recommends microsocks && \
    rm -rf /var/lib/apt/lists/*

# پورت داخلی کانتینر
EXPOSE 1080

# اجرای میکروساکس بدون نام‌کاربری و رمز عبور
CMD ["microsocks", "-p", "1080"]
