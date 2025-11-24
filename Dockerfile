# 1. Lấy nền từ Nginx siêu nhẹ (Alpine)
FROM nginx:alpine

# 2. Xóa trang chủ mặc định của Nginx
RUN rm -rf /usr/share/nginx/html/*

# 3. Copy file HTML của bạn vào trong ảnh (Hàn chết code vào Image)
COPY index.html /usr/share/nginx/html/

# 4. Mở cổng 80
EXPOSE 80

# 5. Lệnh chạy mặc định
CMD ["nginx", "-g", "daemon off;"]
