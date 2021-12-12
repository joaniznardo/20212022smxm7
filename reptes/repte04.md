# Repte 04 - Enviem opcions (paràmetres) addicionals personalitzats - servidor dhcp (opnsense i ubuntu server)

Objectiu: El servidor de ubuntu rep una ip del servidor de dhcp d'Opnsense i **el servidor de dns personalitzat: 1.1.1.1** . (ip de xarxa: 10.7.x.0/24)

Restriccions:  
- no se pot fer servir el mode bridge a virtualbox  
- **SOLS OPNSENSE** pot navegar per internet directament (Mode NAT)
- la connexió entre totes dues màquines virtuals se farà amb **xarxa interna**  
- la vm d'opnsense necessitarà d'una tercera interfície (xarxa) addicional.  
- opnsense  quedarà amb:
  - LAN (host only)  
  - WAN (NAT)  
  - GUEST (internal)
- ubuntu server quedarà amb:
  - GUEST (internal)

TIPS:  
Ordres que te convé controlar a ubuntu server: 
- netplan (amb totes les opcions i els fitxers de configuració)  
- networkctl (per gestionar la interfície de xarxa)  
- resolvectl (per obtindre informació sobre els paràmetres del client de DNS)  


LLiura les captures [aquí](http://tiny.cc/732kuz)
