# Dockerfile
# Étape 1 : Choisir une image de base Python légère
FROM python:3.9-slim

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier le fichier des dépendances et les installer [cite: 40]
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Étape 4 : Copier tout le code de l'application [cite: 41]
COPY . .

# Étape 5 : Spécifier le port 5000 sur lequel Flask écoute [cite: 42]
EXPOSE 5000

# Étape 6 : Définir la commande pour lancer l'application [cite: 43]
CMD ["python", "app.py"]
