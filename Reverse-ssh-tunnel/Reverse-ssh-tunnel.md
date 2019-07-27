# Reverse ssh tunnel
source : https://geekfault.org/2011/02/19/reverse-ssh-acceder-a-un-serveur-derriere-un-natfirewall/

## Objectif

Pouvoir se connecter depuis n'importe où en ssh à une Raspberry PI sans avoir à connaître son adresse ip et un port qui redirige vers elle sur son réseau local.



## Setup

Sur mon VPS, j'installe un serveur SSH.

```shell
sudo apt install openssh-server
```

**Depuis la Raspberry :**

```shell
ssh-keygen -t rsa
# Donner un nom explicite comme "id_rsa-vps" par exemple, et ne pas protéger la clé générée par un mot de passe
ssh-copy-id -i ~/.ssh/chemin_vers_clé_publique.pub adresse.du.vps
```



**Depuis le VPS**

Modifier les paramètres du serveurs ssh pour qu'ils n'acceptent que la connexion par clé RSA :

```shell
sudo nano /etc/ssh/sshd_config
```

Les lignes suivantes doivent être dé-commentées et à ces valeurs :

```shell
PermitRootLogin no
PublicKeyAuthentication yes
PasswordAuthentication no
AllowTcpForwarding yes
```



### Utilisation

Pour créer le tunnel ssh, taper la commande suivante sur la Raspberry :

```shell
ssh -i ~/.ssh/chemin_vers_clé_privée -NR 22222:localhost:22 login@adresse.du.vps
```

Pour se connecter au tunnel ssh, taper la commande suivante sur le VPS :

```shell
ssh -p 22222 127.0.0.1
```



## Automatisation

Je veux maintenant que ce tunnel se crée au démarrage et se relance tout seul en cas de coupure internet.

Installer autossh sur la raspberry.

```ssh
sudo apt install autossh
```

Copier la clé privée à un endroit qui ne dépend pas de l'utilisateur (au cas où il est supprimé):

```shell
sudo cp ~/.ssh/id_rsa-vps /etc/ssh/
```

Créer le service comme suit : 

```shell
sudo nano /etc/systemd/system/ssh_tunnel.service
```

```
[Unit]
Description=Autossh reverse tunnel on local port 22225
After=network.target

[Service]
Environment="AUTOSSH_GATETIME=0"
ExecStart=/usr/bin/autossh -M 0 -i /etc/ssh/id_rsa-vps -o StrictHostKeyChecking=no -NR 22225:localhost:22 login@adresse.du.vps

[Install]
WantedBy=multi-user.target
Alias=ssh_tunnel
```

```shell
sudo systemctl daemon-reload
sudo systemctl start ssh_tunnel.service
sudo systemctl status ssh_tunnel.service # Pour vérifier que le service fonctionne
```



Pour le lancer au démarrage : 

```shell
sudo systemctl enable autossh-mysql-tunnel.service
```

