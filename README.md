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
Apache2 + HTTPS/SSL,  
Discord bot, Minecraft servers & plugin  

# Setup  
```
wget -O /setup.sh -L 'https://raw.githubusercontent.com/Altherneum/server/main/setup.sh'  
chmod +x /setup.sh  
/setup.sh  
```

# Configuration  
- [MySQL password](/scripts/sh/setup.mysql.sh)
- [Discord token](/DiscordBot/data/tokens.yml)
- [Minecraft Discord token](/Serveurs/DataFolder/tokens.yml)
- [Minecraft RCON Password](/Serveurs/SERVERNAME/server.properties) | [exemple](/Serveurs/Hub/server.properties)

# Start  
```
/install.sh  
```

# Installer Azuriom
Connectez vous à la page HTTP de votre serveur en tapant l'adresse IP
## Configuration Azuriom conseillé
- **IP** : 127.0.0.1
- **Base de donnée** : site
- **Mot de passe** complexe définit dans la partie [#Configuration](#Configuration)
- Utilisation de comptes Microsoft pour se connecter
## Mettre à jour la base de donnée MySQL d'azuriom
`/scripts/sh/setup.azuriom-db.sh`

# Force update
```
wget -O /update.sh -L 'https://raw.githubusercontent.com/Altherneum/server/main/update.sh'  
chmod +x /update.sh  
/update.sh  
```
