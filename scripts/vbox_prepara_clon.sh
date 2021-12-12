#!/bin/bash
# Descripció: prepara una màquina virtual per clonar-la. Si ja està preparada no realitza cap acció.
# Invocació: sh vbox_linked_clone-prepara.sh nom_maquina_a_clonar extensió-clon

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
 echo "Ja te un clon. No fer res. Bye Bye" ;
 exit 1;
 else
 echo "No te clon. Procedim a clonar";
fi

#Preparar per clonar
VBoxManage snapshot $VM_NAME take 'clone_base' --description 'Base snapshot for linked clones'




## echo ${llista_vms[@]} | awk '{print $42}'	

