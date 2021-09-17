# Repte 01 - Ping entre 2 vms (opensense i ubuntu server)

Objectiu: fer ping entre les dues màquines. (ip de xarxa: 10.7.x.0/24)

Restriccions:  
- no se pot fer servir el mode bridge a virtualbox  
- totes dues vms poden navegar per internet (Mode NAT)
- la connexió entre totes dues màquines virtuals se farà amb xarxa interna  
- la vm d'opnsense necessitarà d'una tercera interfície (xarxa) addicional.  
- opnsense  quedarà amb:
  - LAN (host only)  
  - WAN (NAT)  
  - GUEST (internal)
- ubuntu server quedarà amb:
  - WAN (NAT)
  - GUEST (internal)

## formulari de coneixements previs  
https://forms.gle/thLKCRkN7DyGPKKi7
