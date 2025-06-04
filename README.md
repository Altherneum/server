# Altherneum.fr server
Server configuration files

<a href=""><img src="https://img.shields.io/github/commit-activity/m/Altherneum/server?color=red&style=for-the-badge"></a>
<a href=""><img src="https://img.shields.io/github/last-commit/Altherneum/server?color=red&style=for-the-badge"></a>
<br>
<a href=""><img src="https://img.shields.io/github/stars/Altherneum?color=red&style=for-the-badge"></a>
<a href=""><img src="https://img.shields.io/github/stars/Altherneum/server?color=red&label=repo%20stars&style=for-the-badge"></a>
<a href=""><img src="https://img.shields.io/github/contributors/Altherneum/server?style=for-the-badge"></a>
<br>
<a href=""><img src="https://img.shields.io/github/languages/code-size/Altherneum/server?color=red"></a>
<a href=""><img src="https://img.shields.io/github/repo-size/Altherneum/server?color=red"></a>

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

# Update et lancer le service
## Tout mettre à jour et lancer
`/update-start.sh`

## Discord start & update
`DiscordBot/update-start.sh`

## Minecraft start & update
`Serveurs/DataFolder/update-start.sh`

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

# Stop
## Tout arrêter
`stop.sh`

## Discord stop
`DiscordBot/stop.sh`

## Minecraft stop
`Serveurs/DataFolder/stop.sh`

# Screen
## Minecraft screen
`sudo -u minecraft screen -ls`
## Discord screen
`sudo -u discord screen -ls`

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

## Root DNS
`@` = `altherneum.fr`
```
@
3600
A
45.159.229.139
```