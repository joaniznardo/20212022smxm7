#!/bin/bash
# Descripció: Genera un linked clone d'una màquina que ja te una snapshot creada.
# Invocació: sh vbox_linked_clone-genera.sh nom_maquina_a_clonar extensió-clon

llista_vms=$(VBoxManage list vms | awk '{print $1}')
echo $llista_vms | grep $1 

if [  $? -eq 0 ]; then
 echo "hi és";
 else
 echo "no hi és" ;
 exit 1;
fi


# variables - úniques
export VM_NAME=${1:-zentyal-template}
export CLON=${2:-clon03}


# shutdown
#VBoxManage controlvm $VM_NAME poweroff
VBoxManage snapshot $VM_NAME  list

# si la màquina ja te un clon no fem un altre
if [  $? -eq 0 ]; then
 echo "Procedim a generar clon" ;
 else
 echo "No te plantilla preparada. Bye Byeº";
 exit 1;
fi

#Clonar (linked clone: disc diferencial)
VBoxManage clonevm $VM_NAME --snapshot 'clone_base' --options link --name $VM_NAME-$CLON --register




## echo ${llista_vms[@]} | awk '{print $42}'	

