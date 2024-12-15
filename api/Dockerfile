# Utiliser une image officielle Python
FROM python:3.10

# Définir le répertoire de travail
WORKDIR /app

COPY . .

# Installer les dépendances
RUN pip install -r requirements.txt

# Exposer le port attendu par Azure App Service
EXPOSE 80

# Commande pour lancer l'application Flask avec Gunicorn sur le port 80
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app", "--reload"]
