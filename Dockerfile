# Użyj oficjalnego obrazu Node.js jako bazowego
FROM node:14

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj plik package.json i package-lock.json
COPY package*.json ./

# Zainstaluj zależności
RUN npm install

# Skopiuj resztę kodu aplikacji
COPY . .

# Otwórz port, na którym aplikacja będzie nasłuchiwać
EXPOSE 3000

# Uruchom aplikację
CMD ["node", "server.js"]
