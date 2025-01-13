###################################################
 Génération de la description URDF du pantographe
###################################################

Nous allons utiliser le modèle 3D au format step conçu et réalisé par M. Olivier PICCIN pour générer la description URDF du pantographe.

.. figure:: resources/img/pantograph_step_model.png
   :align: center

Il s'agit d'un assemblage comportant 5 pièces principales :

  #. BATI_ASM: le bâti de la strucuture du pantographe avec les 2 moteurs pas à pas. Dans l'URDF nous allons le nommer ``base``.
  #. LINK1_ASM: le bras gauche du pantographe. Dans l'URDF nous allons le nommer ``link1``.
  #. LINK2_ASM: l'avant bras gauche du pantographe. Dans l'URDF nous allons le nommer ``link2``.
  #. LINK3_ASM: l'avant bras droit du pantographe. Dans l'URDF nous allons le nommer ``link3``.
  #. LINK4_ASM: le bras droit du pantographe. Dans l'URDF nous allons le nommer ``link4``.

:download:`maquette-5-barres_asm.stp <resources/cad/maquette-5-barres_asm.stp>`

Du point de vue URDF, nous aurons aussi besoin de définir l'outil de travail: le crayon et donc de le référencer par rapport à son support qui se trouve être sur l'avant bras gauche du pentographe (``link2``).

Dans un fichier URDF, les modèles 3D sont utilisés à partir de fichiers collada (extension .dae).
Il va donc falloir convertir notre modèle 3D au format step en un ensemble de 5 modèles 3D au format collada.

==================================
Extraction des modèles 3D en step
==================================

Pour extraire les modèles 3D au format step, vous pouvez utiliser le logiciel freecad.
   
   #. :download:`base.stp <resources/cad/base.stp>`
   #. :download:`link1.stp <resources/cad/link1.stp>`
   #. :download:`link2.stp <resources/cad/link2.stp>`
   #. :download:`link3.stp <resources/cad/link3.stp>`
   #. :download:`link4.stp <resources/cad/link4.stp>`

=====================================
Conversion des modèles 3D en collada
=====================================

Pour convertir les modèles 3D en collada (dae), vous pouvez utiliser le logiciel freecad.
   
   #. :download:`base.dae <resources/cad/base.dae>`
   #. :download:`link1.dae <resources/cad/link1.dae>`
   #. :download:`link2.dae <resources/cad/link2.dae>`
   #. :download:`link3.dae <resources/cad/link3.dae>`
   #. :download:`link4.dae <resources/cad/link4.dae>`

=========================
Création du fichier URDF
=========================

La première étape pour pouvoir créer le fichier et donc de télécharger les modèles .dae précédents. Chacun des modèles correspond à la description d'un élément du mécanisme et peut être assemblé avec le code urdf du mécanisme. Le code urdf du mécanisme est le suivant : 

.. code à insérer

Ce code est une reprise du code urdf du robot scara disponible dans les parties précédentes. Dans notre cas, la structure de notre code est simplifié comparé à celui du robot scara. En effet les fichiers .dae comprennent directement les caractéristiues des pièces comme la couleur, leurs dimensions ...

Pour lier une pièce au pantographe il suffit donc d'appeler la pièce sous sa version .dae et de fixer son origine et son orientation comme présenté dans l'image ci-dessous : 

.. figure:: resources/img/def_piece_urdf.png
   :align: center
   :width: 50%


La déclaration des liaisons entre les pièces se fait elle de la même manière que dans le cas du robot scara. Ici toutes les liaisons entre les pièces sont des liaisons de révolution (revolute). 

.. figure:: resources/img/def_liaison_urdf.png
   :align: center
   :width: 50%

Afin de visualiser le mécanisme, un dernier logiciel doit être installé sur VSCode, le logiciel URDF Visualizer

.. figure:: resources/img/urdf_visualizer.png
   :align: center
   :width: 50%

De cette menière en retournant dans le fichier précédent sur VSCode, en faisant un clic-droit et en cliquant sur 'Command Palette...'

.. figure:: resources/img/command_palette.png
   :align: center
   :width: 25%

Nous avons le champs suivant qui souvre et il suffit donc de cliquer sur 'URDF Visaulizer: Preview URDF/Xacro' puis sur 'Reload'

.. figure:: resources/img/preview_urdf.png
   :align: center
   :width: 50%

Finalement la représentation du pantographe s'affiche : 

.. figure:: resources/img/pantographe_urdf.png
   :align: center
   :width: 50%

Pour un rendu plus clair, nous pouvons changer la couleur des pièces dans les fichiers dae et en changeant les deux valeurs surlignées par des valeurs du RGB.

.. figure:: resources/img/chang_couleur.png
   :align: center
   :width: 50%





