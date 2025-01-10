###########################################
Installation de ROS2 sur le Raspberry Pi 5 
###########################################

Afin de pouvoir de pouvoir installer ROS 2 sur la Raspberry Pi, il nous faut tout d'abord créer une nouvelle session sur le système Ubuntu. Cette session nous est utile afin de travailler sur la Raspberry sans empêcher le travail des autres groupes travaillants avec la même carte.

Pour créer cette nouvelle session, il faut d'abord accéder aux paramètres.
Ensuite, dans la barre de gauche et dans l'onglet utilisateur, il faut cliquer sur le bouton vert "Ajouter un utilisateur ..." comme montré sur l'image suivante : 

.. figure:: resources/img/nov_utilisateur.png
   :align: center
   :width: 50%
   :height: auto


De cette manière nous pouvez créer une session pour un nouvel utilisateur en remplissant les différents champs selon vos choix :

.. figure:: resources/img/crea_nov_util.png
   :align: center
   :width: 50%
   :height: auto

Une fois que le nouvel utilisateur est créé, l'installation de ROS2 peut débuter : 

Il faut tout d'abord choisir la version de ROS la plus adéquate avec la version d'Ubuntu qui a été précédemment intallé. Dans notre cas nous avons la version Ubuntu LTS 24.04, nous devons donc installer ROS2 jazzy. 

Pour installer ce métasystème d'exploitation, nous allons suivre la documentation suivante : 

.. :center::
   `<https://docs.ros.org/en/jazzy/Installation/Ubuntu-Install-Debs.html>`_ 

En suivant les instructions de ce lien, l'installation devrait ce faire sans problèmes et sans erreurs. Toutefois attention, l'installation de ROS2 jazzy peut prendre du temps et demande une certaine quantité de données. Nous vous conseillons donc de connecter la raspberry à un réseau WiFi pour effectuer l'installation.

Finalemennt, pour finir l'installation de tous les logiciels nécessaires au fonctionnement du projet, nous allons installer VScode. Cette installation se fait simplement à l'aide de la commande suivante :

.. code-block:: bash

   code sudo apt install code

.. Décrire les étapes pour installer ROS2 sous ubuntu sur le Raspberry Pi 5
.. Décrire les tests pour vérifier l'installation


***********************
Sources documentaires
***********************

#. `Documentation Officielle de ROS2 pour RaspberryPi <https://docs.ros.org/en/jazzy/How-To-Guides/Installing-on-Raspberry-Pi.html>`_