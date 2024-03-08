# Usa una imagen base ligera de un servidor web como Nginx
FROM nginx:alpine

# Copia los archivos de la página web estática al directorio de Nginx en la imagen
COPY . /usr/share/nginx/html
