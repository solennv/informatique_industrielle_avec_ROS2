#####################################
Mise en place du contrôle des moteurs
#####################################

Maintenant que nous avons mis en place le modèle urdf du pentographe et installé tous les logiciels nécessaires sur la Raspberry Pi 5, nous pouvons mettre en place le contrôle des moteurs du pantographe. Pour ce faire nous allons suivre le tuto suivant qui permet de mettre en lien ROS 2 et les dinamixels : 

https://www.youtube.com/watch?app=desktop&v=E8XPqDjof4U&t=92s


Ce tuto mène au télèchargemet de plusieurs dossiers, cependant si l'on cherche à utiliser les fichiers tels quel, les moteurs ne répondront pas aux commandes de la Raspberry. Il faut donc changer le code du fichier 'read_write.cpp'. 

Il faut donc vérifier que la table est associée au bon moteur, dans notre cas les moteurs utilisés sont les moteurs AX12.

Il faut également vérifier la version du protocole de communication est bien sur 1.0 en raison du modèle de notre moteur.

Il faut également vérifier que la varible baudrate est bien à 115200. Nous pouvons aussi utiliser l'application wizard afin de vérifier tous les ports connectés et nous donne la valeur du baudrate associé à chacun de ces ports.

En suivant l'entièreté de ce tuto et en appliquant les modifications précédement énoncées, nous pouvons faire fonctionner les moteurs à l'aide de la Raspberry Pi 5.