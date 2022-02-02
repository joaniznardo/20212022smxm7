# PROXY - SQUID

data de validació: dilluns 7 de Febrer de 2022  

Preparar un entorn de servidor proxy (que és passarel·la d'internet per a la xarxa interna) i un client gràfic ubuntu 20.04.  

El proxy cal que:  
1) demane usuari i contrassenya per accedir a internet amb una durada de sessió de 5 minuts per renovar la introducció de la contrassenya (a efectes de comprovació)   

2) bloquege l'accés a webs com ara:  
youtube.com  
marca.com  
instagram.com  

3) que bloquege en funció del grup d'usuaris:  
alumnat - pot accedir a xtec.cat però no a github.com  
professorat - pot accedir a xtec.cat i github.com  

4) se bloquege l'accés per franges horàries:  
- cap accés de 22:00-8:00  
- qualsevol accés de 8:00-22:00  

5) implementar l'accés de proxy explícit i proxy transparent (no simultàniament, com és obvi)  
- se valorarà la preparació de "perfils" a firefox per tindre el navegador preparat  


En la validació de demanarà reptes com ara:  
- canviar el port del proxy (ex: 8080, 8088, 8040...)  
- afegir o eliminar webs permeses/denegades  
- afegir/eliminar comptes i grups per accedir a internet  
- demo de l'accés amb proxy explícit i proxy invers  
