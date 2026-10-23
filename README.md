# postman_cli-tests

Colecciones y environments de Postman para las pruebas de SALUD.

- `salud/SALUD_ALL.postman_collection.json`: colección principal.
- `salud/Autorizaciones/*.postman_environment.json`: environments LOCAL y PRE. Los secretos (`janusSecret`, `hmackey`) están vacíos; rellénalos en local sin commitearlos.
- `salud/snapshot.ps1`: script para generar snapshots (se guardan en `salud/snapshots/`, ignorado por git).
