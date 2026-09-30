FROM alpine:latest

# نصب پکیج فوق‌العاده سبک microsocks
RUN apk add --no-cache microsocks

# پورت داخلی کانتینر
EXPOSE 1080

# اجرای میکروساکس بدون احراز هویت روی پورت 1080
CMD ["microsocks", "-p", "1080"]
