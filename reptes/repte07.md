# Repte 07 - DNS - BIND - domini simple i redundància síncrona - servidor ubuntu (X2) - client ubuntu (X1)
 
**Objectiu**: Instal.lar i configurar BIND9 en el servidor ubuntu per a que se puga fer resolució DIRECTA i INVERSA (per nom i per ip)  des d'el client a qualsevol dels dos servidors. (ip de xarxa: 10.7.x.0/24)

**termini**: dimarts 26/10 - 23:00 (dia i hora límit)

Restriccions:  
- nom del domini: inicial_el_teunom+1er_cognom.edu (exemple: en el meu cas seria jiznardo.edu).  
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


LLiura les captures demostratives [aquí](http://tiny.cc/3hhkuz)  
En la demo s'ha de poder comprovar que les consultes s'efectuen sobre cadascun dels servidors: caldrà aturar un dels dos.  
Molarà que la demo s'efectue amb el tcpdump ;)

Ajuda addicional:  
http://tiny.cc/vvrkuz  
http://tiny.cc/5wrkuz  
