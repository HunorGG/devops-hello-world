# 1) Node hivatalos image
FROM node:18

# 2) Workdir a containerben
WORKDIR /app

# 3) package.json átmásolás
COPY package*.json ./

# 4) dependenciák telepítése
RUN npm install

# 5) app fájlok átmásolása
COPY . .

# 6) app portja
EXPOSE 8080

# 7) app indítása
CMD ["node", "server.js"]
