# Paquets linux indispensables

Liste de paquets et logiciels qui simplifient la vie sous linux



## Exa

Clone de ls avec une colorisation différente, très pratique pour les permissions.

https://the.exa.website/

![./exa.jpg](./exa.jpg)

Pour plus de simplicité, modifier votre fichier .bashrc

`nano ~/.bashrc`

Ajouter / modifier la ligne suivante 

`alias ll='exa -laF --group-directories-first --header --git --long'`

Redémarrez ou tapez la commande `source ~/.bashrc` pour appliquer les changements.

Maintenant, utilisez la commande `ll` !



## Bat

Permet d'afficher des fichiers dans le terminal avec la colorisation syntaxique

https://github.com/sharkdp/bat

![./exa.jpg](./bat.jpg)

### Utilisation : 

tapez `bat <fichier>` pour afficher le fichier. Utilisez les flèches dirrectionnelles pour vous déplacer, et `q ` pour quitter.



## TL;DR

https://tldr.sh/

Abréviation de "Too long, didn't read", TLDR permet d'avoir des exemples de commandes plutôt que de la doc longue à lire.

![./tldr.png](./tldr.png)



## TheFuck

https://github.com/nvbn/thefuck

Vous avez oublié un sudo ou fait une faute de frappe dans une commande ? Tapez thefuck et ça vous trouve la commande adaptée (possibilité d'ajouter un alias dans le .bashrc !)

![./thefuck.gif](./thefuck.gif)



## Typora

https://typora.io/

Éditeur de fichiers markdown disponible sous Windows, Mac, Linux.



## Franz

https://meetfranz.com/

Logiciel regroupant tous vos clients de messagerie préférés.

Consomme pas mal de RAM, mais est très pratique. Disponible sous Windows, Mac, Linux.

