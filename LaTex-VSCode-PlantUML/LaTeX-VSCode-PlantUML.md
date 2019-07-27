# LaTeX et PlantUML sur VisualStudio

Notice d'installation de LaTeX et de plantUML sur VisualStudio.

## Installation

Premièrement, installez les paquets suivants. Attention, il y en a pour 4Go de données.

| Paquet        | Utilité                   |
| ------------- | ------------------------- |
| textlive-full | Paquet LaTeX              |
| graphviz      | Prévisualisation plantUML |

`sudo apt install texlive-full graphviz`

Téléchargez le fichier plantuml.jar sur le site officiel PlantUML et enregistrez le dans un endroit adéquat.

Installez les extensions suivantes sur VSCode :

| Extension      | Lien                                                         |
| -------------- | ------------------------------------------------------------ |
| LaTeX Workshop | https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop |
| PlantUML       | https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml |

Allez dans les paramètres (`CTRL + ,`), et mettez l'option d'auto clean des fichiers temporaires de LaTeX à "onBuilt" :

![img](https://i.imgur.com/YvkSs6p.png)



Dans les paramètres encore, recherchez "uml" et mettez les paramètres comme suit.

![img](https://i.imgur.com/7ggaarq.png)

## Utilisation

Dans VSCode : file -> Open folder -> ouvrir le dossier contenant le projet LaTeX.

| Quoi ?                                   | Comment ?                                                    |
| ---------------------------------------- | ------------------------------------------------------------ |
| Afficher le plantUML quand on le modifie | `CTRL + MAJ + P`<br />Taper "uml" et sélectionner "preview"  |
| Exporter un diagramme plantUML           | `CTRL + MAJ + P`<br />Taper "uml" et sélectionner "export current diagram" |
| Exporter tous les diagrammes             | `CTRL + MAJ + P`<br />Taper "uml" et sélectionner "export workspace diagrams" |
| Afficher le LaTeX quand on le modifie    | `CTRL + MAJ + P`<br />Taper "latex" et sélectionner "View LaTeX Pdf file" (in vs code tab) |
| Exporter le LaTeX                        | `CTRL + MAJ + P`<br />Taper "latex" et sélectionner "build latex project" |

Si vous avez bien configuré votre VSCode, les fichiers eps seront automatiquement générés dans le dossier
/img du projet LaTeX.



## Formats des fichiers plantUML

Les fichiers plantUML doivent avoir extension `.puml`

Exemple de fichier plantuml basique : 

```uml
@startuml
skinparam Monochrome true
skinparam classAttributeIconSize 0

@enduml
```

