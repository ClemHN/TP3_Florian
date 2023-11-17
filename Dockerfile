# Utiliser l'image de base Python 3 sur Alpine
FROM python:3-alpine

# Installer curl pour le healthcheck (si nécessaire)
RUN apk add --no-cache curl

# Définir les variables d'environnement par défaut
ENV NOM=VotreNom
ENV PRENOM=VotrePrénom

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier le script Python dans le conteneur
COPY hello.py ./

# Exécuter le script Python lors du lancement du conteneur
CMD ["python", "./hello.py"]

# Instruction HEALTHCHECK
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:80/ || exit 1