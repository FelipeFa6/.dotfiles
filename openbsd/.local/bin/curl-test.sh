#!/bin/bash

# Endpoint URL
url="http://localhost/api/interconsulta/create"

# Example JSON data
json_data='{
    "filters": {
        "paciente_rut": "",
        "display_rows": "10",
        "date_start": "03/06/2024",
        "date_end": "03/07/2024",
        "especialidad_destino": "",
        "tipo_estado": "1",
        "estado": [ '2' ]
    }
}'

curl -X POST \
    -H "Content-Type: application/json" \
    -d "${json_data}" \
    "${url}"

while true ; do sleep 1; done
