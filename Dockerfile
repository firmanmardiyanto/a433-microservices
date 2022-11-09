# Menggunakan image node:14
FROM node:14
# Membuat direktori app
WORKDIR /app
# Menyalin root project ke direktori workdir/app
COPY . .
# Set environment
ENV NODE_ENV=production DB_HOST=item-db
# Install dependencies
RUN npm install --production --unsafe-perm && npm run build
# Expose port 8080
EXPOSE 8080
# Menjalankan perintah untuk memulai aplikasi
CMD [ "npm", "start" ]