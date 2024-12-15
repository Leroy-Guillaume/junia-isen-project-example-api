# Utiliser une image officielle Python
FROM python:3.10

# Définir le répertoire de travail
WORKDIR /app

# Copier les dépendances dans le conteneur
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste des fichiers
COPY . .

# Exposer le port attendu par Azure App Service
EXPOSE 80

# Commande pour lancer l'application Flask avec Gunicorn sur le port 80
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]
