# accés i administració remotes  

En aquesta UF veurem les diferents maneres de connectar-nos (i administrar) sistemes remots, tant amb interfície textual (ssh) com en interfície gràfica nativa (protocols: rdp i vnc) i interfície gràfica web (via navegador: webmin).   

## restriccions  
### amb la **ips** de la xarxa assignada i amb **hostname** personalitzat (inicial nom+primercognom: jiznardo, per exemple)...     
### amb dues màquines virtuals d'escriptori 
- optimitzant recursos:  
  -- recomane instal·lar una (recorda posar al menys 64MB de tarja gràfica i 1500 de RAM)   
  -- fer un *linked-clone*.   
- dues targes de xarxa:  
  - nat
  - interna

## AVALUACIÓ:
### per revisar
- repte 1  
  - conservar historial en un fitxer: inicial nom+primercognom-ssh-server.txt i inicial nom+primercognom-ssh-client.txt   
    - exemple: history | tee jiznardo-ssh-server.txt
- repte 2  
  - conservar captures de pantalla completa de la configuració webmin de l'squid i ssh 
- repte 3 
  - conservar captures de demostració de l'accés remot amb un compte nou (inicial nom+primercognom: jiznardo, p.ex. )  
### per comprovar
- repte 1  
  - modificació d'algun paràmetre del servidor
  - accés amb una nova clau ssh
  - accés amb un altre compte que sols existeix al servidor
- repte 2  
  - modificació d'algun paràmetre del **squid/sshd** a través de webmin
- repte 3 
  - instal·lació d'un dels dos serveis a un escriptori nou


## DATA AVALUACIÓ
repte 1 dimecres 16 de febrer
reptes 2 i 3 dimecres 

## accés remot - SSH  (repte 1)  
- demostra que pots connectar-te de manera senzilla (configuració del client) a un servidor o a altres clients a través del servidor  
  -- servidor  
    - que escolte en un port diferent del 22 com ara el 44044, 44045 o 44011 (mesura de seguretat)   
    - que només se puguen connectar uns comptes predeterminats (caldrà crear comptes [useradd xxxx] amb la seva contrassenya [sudo password xxx]  
    - que se mostre un missatge de benvinguda al server generat amb figlet (el nom del server) i la ip  
    - que sols permeti 3 intents pels accessos amb contrassenya  
    - que només permeti 2 sessions obertes (algú ha dit tmux?)  
    - que el compte root no se pugui connectar  
    - que sols se permeta l'accés amb clau pública  
    - que permeta/no permeta l'execució d'aplicacions gràfiques  
    - avançat: que el server sols deixe un tipus de protocol criptogràfic (ed25519)  

  -- client  
    - que només tingues que posar [ ssh serverjoan / ssh clientjoan ] per accedir a les vms  
    - amb aplicació gràfica  
    - amb clau privada (indicant-la)  
    - amb port destí  
    - descartant la comprovació (Host checking)  
     
  -- gestió de la clau pública/privada  
    - generació: ssh-keygen no interactiu (sense passphrase)  
    - còpia de la clau públia: ssh-copy-id  

[links recomanats ssh]    
https://www.ssh.com/academy/ssh/copy-id  
https://www.ssh.com/academy/ssh/passphrase  
https://hackmd.io/@joaniznardo/ssh_tips  


## administració remota - interfície web - webmin  (repte 2)  
- instal·la el servei webmin a **desktop01**  
  -- instal·la el servei **squid** per que **desktop02**  
     -- navegue a través de **desktop01**  
     -- s'autentique (usuari i contrassenya)  
  -- configura a través de webmin els paràmetres de sshd  
    -- no se permeta l'accés a root  
    -- el port siga diferent del port 22  

[links recomanats webmin]  
https://www.webmin.com/index.html
http://doxfer.webmin.com/Webmin/Installation
http://somebooks.es/instala-webmin-y-administra-ubuntu-20-04-desde-el-navegador/
https://phoenixnap.com/kb/install-webmin-on-ubuntu

## accés remot (rdp/vnc)  - (repte 3)
- instal·la i configura el protocol xrdp a **desktop01** 
  - accedeix des de **desktop02** amb remmina a **desktop01**  
- instal·la i configura el protocol **vnc** a **desktop02**     
  - accedeix des de **desktop01** amb remmina a **desktop02**  

[links recomanats rdp/vnc]  
https://bytexd.com/xrdp-ubuntu/
https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-20-04
https://remmina.org/how-to-install-remmina/
https://wiki.archlinux.org/title/Remmina


## no vist per falta de temps (valorable si s'aconsegueix)  
- administració remota - **cockpit** (alternativa a webmin)  
  - https://cockpit-project.org/  
  - https://bytexd.com/how-to-install-cockpit-on-ubuntu/  
- accés remot a aplicacions!! - **xpra** - (no cal compartir tot el escriptori)  
  - puc compartir per **web** l'accés al meu "geany" (editor de textos)  
  - https://xpra.org/
  - https://github.com/Xpra-org/xpra
  - https://bytexd.com/xpra/
- accés remot propietari - chrome-remote-desktop  
  - https://bytexd.com/install-chrome-remote-desktop-headless/  
- administració remota - **ansible** (**LA** manera d'administrar sistemes: extens - possible incorporació al projecte)  
  - compte!!!: aquest darrer apartat el recomane a mig-llar termini orientat a una administració de sistemes eficient i elegant.  

