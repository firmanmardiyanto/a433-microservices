# Membuat Docker Image
docker build -t item-app:v1 .
# Melihat image yang sudah dibuat
docker images
# Jalanin ini di terminal (Jangan sampai di reject cuma gara-gara mas/mbak lupa set username dan token Github dengan scope yg sesuai)
# export CR_USER=YOUR_USERNAME
# export CR_PAT=YOUR_TOKEN
# Mengubah nama image
docker tag item-app:v1 ghcr.io/$CR_USER/item-app:v1
# Login ke github packages
echo $CR_PAT | docker login ghcr.io -u $CR_USER --password-stdin
# Mengunggah image ke github packages
docker push ghcr.io/firmanmardiyanto/item-app:v1
