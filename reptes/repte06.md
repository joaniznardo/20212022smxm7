# Repte 06 - DNS - BIND - domini simple - servidor ubuntu - client ubuntu 
 
Objectiu: Instal.lar i configurar BIND9 en el servidor ubuntu per a que se puga fer resolució per nom des d'el client. (ip de xarxa: 10.7.x.0/24)


Restriccions:  
- El nom del domini serà: inicial_del_teu_nom+1er_cognom.edu (exemple: en el meu cas seria: jiznardo.edu)
- no se pot fer servir el mode bridge a virtualbox  
- **SOLS UBUNTU server** pot navegar per internet directament (Mode NAT/Mode host-only)
- la connexió entre totes dues màquines virtuals se farà amb **xarxa interna**  
- ubuntu server quedarà així:  
  - WAN (NAT/hostonly)  
  - GUEST (internal)  
- ubuntu client quedarà amb:   
  - GUEST (internal)  

TIPS:  
Ordres que te convé controlar a ubuntu server: 
- netplan (amb totes les opcions i els fitxers de configuració)  
- networkctl (per gestionar la interfície de xarxa)  
- resolvectl (per obtindre informació sobre els paràmetres del client de DNS)  
- si assignes la ip de manera manual a client i servidor (o al menys al client) te caldrà indicar quin és el servidor de noms via systemd-resolved (normalment la 1era búsqueda t'indicarà quin fitxer has d'afegir (configuració manual))


LLiura les captures [aquí](http://tiny.cc/nc8kuz)
