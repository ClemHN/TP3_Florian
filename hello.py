# hello.py
import os
import time

# Lire les variables d'environnement
nom = os.environ.get("NOM", "Inconnu")
prenom = os.environ.get("PRENOM", "Inconnu")

while True:
    print(f"Bonjour, je suis {nom} {prenom}")
    time.sleep(5)  # Pause de 5 secondes

