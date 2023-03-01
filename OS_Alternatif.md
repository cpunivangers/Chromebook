# Installation d'un autre OS sur le Chromebook

Exemple sur ASUS Chromebook C423NA (MANXCV17183042E)  [29/102021]:
- Ram 8 Go
- Stockage : eMMC 64 Go
- Processeur  Intel Celeron N3350 (Code Apollo Lake)
- Carte mère RABBID


## Mettre le Chromebook en mode développeur

https://mrchromebox.tech/#devmode

- Démarré avec **[ESC+Refresh+Power]**
- **[CTRL+D]** pour activé le mode développeur  
	**Attention cette opération réinitialise le Chromebook et éfface toutes les données**

## Installation avec le micrologiciel RW_LEGACY  

Vous devez installer le micrologiciel RW_LEGACY pour booter sur une clé USB [CTRL+L] et installer le système Linux.

https://mrchromebox.tech/#fwscript

- Se connecter en invité sur le Chromebook
- Avec une fenêtre de navigateur ouverte, appuyez sur **[CTRL+ALT+T]** , puis tapez **shell**.
- Télécharger et exécuter le script :

      cd; curl -LO mrchromebox.tech/firmware-util.sh && sudo bash firmware-util.sh

- Installer/Mettre à jour le micrologiciel RW_LEGACY

Après la mise à jour du micrologiciel RW_LEGACY, le mode "Boot Legacy" est accessible via **[CTRL+L]** sur l'écran de démarrage du mode développeur.

### Installer Debian-Facile (Boot clé usb avec image ISO)

https://debian-facile.org/dflinux/isos/


### Compléments installation :

- Ouvrir une session terminal **[CTRL+ALT+F1]** (F1 = Touche Flèche Gauche à coté de la touche Échap) sans ouvrir de session graphique.
- Supprimer les dossier suivants pour initialiser la session.

      rm -rf .config/xfce4 && rm -rf .mozilla/

- Télécharger et exécuter le script d'installation :

      curl -sL https://uabox.univ-angers.fr/index.php/s/A529vAkMqi5X5n1/download | bash

- Mise à jour de firmware spécifique

      sudo apt install -t bullseye-backports firmware-iwlwifi
    
- Redémarrer la machine

      sudo reboot


### Problèmes :

- Haut-parleurs **KO**
- Son jack **KO**
- Casque USB **ok**
- Bluetooth **ok**
- Webcam **ok**
- Pavé tactile **ko**

### Conclusion

Les + :
- La réactivité meilleur que dans le conteneur Linux
- Pas de contrainte de compte Google
- Choix des logiciels.

Les - : La reconnaissance du matériel.

Vous pouvez réinstaller ChromeOS en utilisant le stokage externe : https://www.asus.com/fr/support/FAQ/1039185/#

## Installation avec le micrologiciel UEFI

Vous devez écraser le micrologiciel UEFI. https://mrchromebox.tech/#fwscript

- Enlever la protection matériel, pour l'Asus C423 :
    - Débrancher la batterie (attention vis sous le patin haut gauche). https://www.youtube.com/watch?v=wz_ISwEPGuc
    - Démarrer avec l'alimentation secteur.
- Se connecter en invité sur le Chromebook
- Avec une fenêtre de navigateur ouverte, appuyez sur **[CTRL+ALT+T]** , puis tapez **shell**.
- Télécharger et exécuter le script :

      cd; curl -LO mrchromebox.tech/firmware-util.sh && sudo bash firmware-util.sh

- Installer/mettre à jour le micrologiciel UEFI (ROM complète)

**Attention cette opération peut bloquer votre matériel. Le retour vers chromeOS est difficile.**

Votre matériel devient un PC standard

- Éteindre et rebrancher le batterie

### Installer Debian-Facile comme précédemment

Conclusion :

Les + :
- La réactivité meilleur que dans le conteneur Linux
- Pas de contrainte de compte Google
- Pas de contrainte au démarrage
- Choix des logiciels.

Les - : La reconnaissance du matériel audio.


### Installer Windows 10 Pro

- Installation Windows 10 Pro 22H2
- Mise à jour Windows + Mise à jour pilotes
- Autres mises à jour pilotes Coolstar : https://coolstar.org/chromebook/windows-install.html
  - Install Chrome EC Driver
  - Install Keyboard Remap Utility
  - Install Touchpad Driver
  - Audio Payant non testé
  - HDMI en chantier

Les + :
- Pas de contrainte de compte Google
- Pas de contrainte au démarrage
- Choix des logiciels.

Les - : La reconnaissance du matériel audio.