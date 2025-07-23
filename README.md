# Altherneum.fr server
Server configuration files

# Badges
![Doc site](https://img.shields.io/website?down_color=red&down_message=offline&style=badge&up_color=green&up_message=online&url=https%3A%2F%2Fdoc.Altherneum.fr)
![MC site](https://img.shields.io/website?down_color=red&down_message=offline&style=badge&up_color=green&up_message=online&url=https%3A%2F%2Fmc.Altherneum.fr)  
![View](https://komarev.com/ghpvc/?username=Altherneum&color=red&label=%F0%9F%91%80)
![Discord](https://discordapp.com/api/guilds/1081921426333909072/widget.png)

![Commit week](https://img.shields.io/github/commit-activity/w/Altherneum/server?color=red)
![Commit month](https://img.shields.io/github/commit-activity/m/Altherneum/server?color=red)
![Commit year](https://img.shields.io/github/commit-activity/y/Altherneum/server?color=red)

![Creation date](https://img.shields.io/github/created-at/Altherneum/server?color=red)
![Commits](https://img.shields.io/github/commit-activity/t/Altherneum/server?color=red)

![Code size](https://img.shields.io/github/languages/code-size/Altherneum/server?color=red)
![Repo size](https://img.shields.io/github/repo-size/Altherneum/server?color=red)
![Files](https://img.shields.io/github/directory-file-count/Altherneum/server?color=red)

![Last commit](https://img.shields.io/github/last-commit/Altherneum/server?color=red)

![Repo stars](https://img.shields.io/github/stars/Altherneum/server?color=red&style=badge)
![Contributors](https://img.shields.io/github/contributors/Altherneum/server?color=red)
![Forks](https://img.shields.io/github/forks/Altherneum/server?color=red&style=badge)
![Watchers](https://img.shields.io/github/watchers/Altherneum/server?color=red&style=badge)

![Languages counter](https://img.shields.io/github/languages/count/Altherneum/server?color=red)
![Top language](https://img.shields.io/github/languages/top/Altherneum/server?color=red)

![Issues](https://img.shields.io/github/issues/Altherneum/server)
![Pull request](https://img.shields.io/github/issues-pr/Altherneum/server)

## Organisation
![.github discussions](https://img.shields.io/github/discussions/Altherneum/.github?color=red)
![Org followers](https://img.shields.io/github/followers/Altherneum?color=red&style=badge)
![Org sponsors](https://img.shields.io/github/sponsors/Altherneum?color=red)

# Liens
- [Repository](https://github.com/Altherneum/server)
- [Tableau](https://github.com/orgs/Altherneum/projects/5/)
- [Issues](https://github.com/Altherneum/server/issues)
- [Commits](https://github.com/Altherneum/server/commits/main)

# Applications
- Liste des repo d'applications rattachés [github.com /.github /profile /README.md #libs-externes](https://github.com/Altherneum/.github/blob/main/profile/README.md#libs-externes)
- Liste des librairies utilisés dans les applications [github.com /Altherneum /.github /profile /README.md #repo](https://github.com/Altherneum/.github/blob/main/profile/README.md#repo)

# Setup
## Se connecter
- `ssh root@altherneum.fr`
- Valider avec le mot de passe
### Prochaines connections
- Les prochaines connexions devront se faire depuis le compte `admin`, La connexion depuis SSH au compte root étant désactivée par la suite dans [#Configuration](#Configuration)
  - `ssh admin@altherneum.fr` puis `su - root` pour escalader en tant que super user

## Lancer l'installation
```
wget -O /setup.sh -L 'https://raw.githubusercontent.com/Altherneum/server/main/setup.sh'
chmod +x /setup.sh
/setup.sh
```

## Configuration
- [MySQL password](/scripts/sh/setup.mysql.sh)
- [Discord token](/DiscordBot/data/tokens.yml)
- [Minecraft Discord token](/Serveurs/DataFolder/tokens.yml)
- [Minecraft RCON Password](/Serveurs/SERVERNAME/server.properties) | [exemple](/Serveurs/Hub/server.properties)
- [Admin account Password](/scripts/sh/setup.system.user.sh)
- [SSH WebHook](/etc/ssh/sshrc)

## Lancer l'installation
`/install.sh`

## Installer Azuriom
Connectez vous à la page HTTP de votre serveur en tapant l'adresse IP
### Configuration Azuriom conseillé
- **IP** : 127.0.0.1
- **Base de donnée** : site
- **Mot de passe** complexe définit dans la partie [#Configuration](#Configuration)
- Utilisation de comptes Microsoft pour se connecter
### Ajouter le thème et plugins
- [altherneum.fr/admin/themes](https://altherneum.fr/admin/themes)
  - Prism
- [altherneum.fr/admin/plugins](https://altherneum.fr/admin/plugins)
  - Shop
  - DedipassPayment
### Mettre à jour la base de donnée MySQL d'azuriom
`/scripts/sh/setup.azuriom-db.sh`
### Nettoyer le cache
- Connectez vous au CMS Azuriom
- Rendez vous dans les paramètres : [altherneum.fr/admin/settings/performance](https://altherneum.fr/admin/settings/performance)
- Cliquer sur "Vider le cache"

## Utilisation de PhPMyAdmin
- [altherneum.fr/phpmyadmin](https://altherneum.fr/phpmyadmin)
- Utilisateur et mot de passe configuré lors de l'installation dans le fichier de [#Configuration](#Configuration)

# Start
## Lancer via le script
### Tout lancer
`start.sh`

### Discord start
`DiscordBot/start.sh`

### Minecraft start
#### Lancer tout les serveurs
- `Serveurs/DataFolder/start.sh`
#### Lancer les serveurs par défaut
- `Serveurs/DataFolder/start-auto.sh`

## Lancer via un service
### Service Apache2
- `service apache2 start`
### Service MySQL
- `service mysql start`
### Service Discord
- [/scripts/discord.service](https://github.com/Altherneum/server/blob/main/scripts/discord.service)
- `service discord start`
### Service Minecraft
- [scripts/minecraft.service](https://github.com/Altherneum/server/blob/main/scripts/minecraft.service)
- `service minecraft start`
### Service Code-Server
- `service code-server@vscode start`

# Update et lancer le service
## Tout mettre à jour et lancer
`/update-start.sh`

## Discord start & update
`DiscordBot/update-start.sh`

## Minecraft start & update
`Serveurs/DataFolder/update-start.sh`

## Code-server stop & start & update
- Stoper Code-Server [# Code-Server stop](#Code-Server-Stop)
- Update Code-Server [# Code-Server update](#Code-Server-Update)
- Lancer Code-Server [# Service Code-Server](#Service-Code-Server)

# Update
## Force update all
```
wget -O /update.sh -L 'https://raw.githubusercontent.com/Altherneum/server/main/update.sh'
chmod +x /update.sh
/update.sh
```

## Update all
`/update.sh`

## Discord update
`/DiscordBot/update.sh`

## Minecraft update
`/Serveurs/DataFolder/update.sh`

## Code-Server update
- Changer le numéro de version à la ligne n°1
  - Exemple : `VERSION=1.0.0` passe vers `VERSION=4.100.3`
- Lancer les 3 commandes [# commandes Code-Server update](#Commandes-Code-Server-Update)

```
VERSION=4.100.3
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb
```

- Scripts d'installation automatique utilisé par le serveur utilisant le même extrait de code : [/scripts/sh/setup.code-server.sh](https://github.com/Altherneum/server/tree/main/scripts/sh/setup.code-server.sh)

# Stop
## Tout arrêter
`stop.sh`
## Discord stop
`DiscordBot/stop.sh`
## Minecraft stop
`Serveurs/DataFolder/stop.sh`
## Code-Server stop
- `service code-server@vscode stop`

# Screen
- `su - root` Passer en root
## Minecraft screen
- `su minecraft` Passer sur l'utilisateur `Minecraft`
## Discord screen
`su discord` Passer sur l'utilisateur `Discord`
## Commandes screen
Voire le cours sur [screen](/cours/linux#screen)

# Fichiers utiles
## .bash_history
- `/home/admin/.bash_history`
- `/home/vscode/.bash_history`
- `/DiscordBot/.bash_history`
- `/root/.bash_history`
## Logs
- VScode :
  - `/var/log/apache2/vscode.error_log`
  - `/var/log/apache2/vscode.access_log`
- Apache2 :
  - `/var/log/apache2/access.log`
  - `/var/log/apache2/error.log`
  - `/var/log/apache2/other_vhosts_access.log`
- SSHD : `/var/log/auth.log`

# Backup
## Map & Spawn backup
- via l'utilisateur `root` ou `sudo <CMD>`
- Se déplacer à la racine : `cd /`
- Ziper le monde à sauvegarder vers le repo `server` via : `tar -acf /home/vscode/repo/server/Serveurs/<SERVER>/Spawn.zip /Serveurs/<SERVER>/Spawn/`
  - Exemple : `tar -acf /home/vscode/repo/server/Serveurs/Hub/Spawn.zip Serveurs/Hub/Spawn/`
- Se rendre sur le code-server via : [code.altherneum.fr](https://code.altherneum.fr) sur le repo [server](https://code.altherneum.fr/?folder=/home/vscode/repo/server)
- Commit et Push le changement de fichier dans le repo ![image](https://raw.githubusercontent.com/Altherneum/.github/70ba87580c2dda3f66302a4e50382cf76920753b/note/assets/images/brave_iglXKRSD96.png)

## Backup targeted
- `/backup/backuptarget.sh`
  - Cible `/Serveurs` et `/DiscordBot`
## Obsolète
### Backup full
- `/backup/backupfull.sh`
  - Cible tout sauf le fichier `/backup.tar.gz`
### Backup SRV
- `/backup/backupsrv.sh`
  - Cible tout, sauf les dossiers systèmes (ex : `/srv`, `/home`, `/var`, `/etc`, ...)
### Backup vanilla
- `/backup/backup.sh`
  - Cible presque de la même manière tout, sauf les dossiers systèmes

# DNS routing
## TXT DNS
```
_gh-Altherneum-o
3600
TXT
2bdece4caf
```

```
_github-pages-challenge-Altherneum
3600
TXT
9c22d2141475847bf5ec793a131c9b
```

```
_gh-Altherneum-o.doc
3600
TXT
060d5899eb
```

```
_github-pages-challenge-Altherneum.doc
3600
TXT
f9a588a7a48398e4fd0b367f822131
```

## CNAME DNS
```
www
3600
CNAME
Altherneum.fr.
```

```
mc
3600
CNAME
Altherneum.fr.
```

```
play
3600
CNAME
Altherneum.fr.
```

```
*
3600
CNAME
Altherneum.fr.
```

## Doc DNS
```
doc
3600
CNAME
Altherneum.github.io.
```

[github.com/Altherneum/Altherneum.github.io/ ... /CNAME](https://github.com/Altherneum/Altherneum.github.io/blob/main/CNAME)

## MC DNS
```
_minecraft._tcp.hub
3600
SRV
0 5 25500 mc.Altherneum.fr.
```

```
_minecraft._tcp.creatif
3600
SRV
0 5 25501 mc.Altherneum.fr.
```

```
_minecraft._tcp.anarchie
3600
SRV
0 5 25504 mc.Altherneum.fr.
```

```
_minecraft._tcp.survie
3600
SRV
0 5 25505 mc.Altherneum.fr.
```

```
_minecraft._tcp.rpg
3600
SRV
0 5 25502 mc.Altherneum.fr.
```

```
_minecraft._tcp.skyblock
3600
SRV
0 5 25503 mc.Altherneum.fr.
```

```
_minecraft._tcp.opprison
3600
SRV
0 5 25506 mc.Altherneum.fr.
```

```
_minecraft._tcp.@
3600
SRV
0 5 25500 mc.Altherneum.fr.
```

```
_minecraft._tcp.play
3600
SRV
0 5 25500 mc.Altherneum.fr.
```

```
_minecraft._tcp.mc
3600
SRV
0 5 25500 mc.Altherneum.fr.
```

```
_minecraft._tcp
3600
SRV
0 5 25500 mc.Altherneum.fr.
```

## IP DNS
```
vps
3600
A
45.159.229.139
```

## Root DNS
### Root entry
`@` = `altherneum.fr`
```
@
3600
A
45.159.229.139
```
### Any entry
`*` = `*.altherneum.fr`
```
*
3600
CNAME
Altherneum.fr.
```
## Apache2 redirection
### Doc.altherneum.fr
- [altherneum.fr](https://altherneum.fr)

- [doc.altherneum.fr](https://doc.altherneum.fr)

- [docs.altherneum.fr](https://docs.altherneum.fr)
- [wiki.altherneum.fr](https://wiki.altherneum.fr)
- [info.altherneum.fr](https://info.altherneum.fr)

### Github.com/altherneum
- [git.altherneum.fr](https://git.altherneum.fr)
- [github.altherneum.fr](https://github.altherneum.fr)

### Code-Server
- [code.altherneum.fr](https://code.altherneum.fr)
- [vscode.altherneum.fr](https://code.altherneum.fr)

### Youtube.com/watch?v=2zpCOYkdvTQ
- [windows.altherneum.fr](https://windows.altherneum.fr)
- [microsoft.altherneum.fr](https://microsoft.altherneum.fr)
- [fuckwindows.altherneum.fr](https://windows.altherneum.fr)
- [fuckmicrosoft.altherneum.fr](https://microsoft.altherneum.fr)

### Minecraft
- [play.altherneum.fr](https://play.altherneum.fr)
- [mc.altherneum.fr](https://mc.altherneum.fr)
- [minecraft.altherneum.fr](https://minecraft.altherneum.fr)
- [\* .altherneum.fr](https://\*.altherneum.fr)
