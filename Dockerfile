# Utilise l'image officielle Node.js comme base
FROM node:14

# Crée un répertoire de travail
WORKDIR /usr/src/app

# Copie les fichiers package.json et package-lock.json
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie tout le reste du projet
COPY . .

# Expose le port
EXPOSE 3000

# Commande pour démarrer l'application
CMD [ "node", "server.js" ]
