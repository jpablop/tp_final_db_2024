db.personasLiquidaciones.insertOne( 
    {
        "id": 8888888,
        "atulp": 0,  "adulp": 1,
        "documento": "27854026",
        "apellido": "PEREZ", "nombre": "JUAN PABLO",
        "liquidacionesId": 292,  "personaId": 999999,
        "obraSocialId": 1,
        "antiguedadTotalAa": 10, "antiguedadTotalMm": 10,
        "antiguedadTotalDd": 10, "discapacidadId": 0,
        "generoId": 1,  "estadoCivilId": 1,
        "tipoDocumentoId": 0, "nacionalidadId": 1,
        "tituloPersonaId": 0
      }

)

db.cargosLiquidaciones.insertOne(
    {
        "id": 99999999,
        "titulo": 0, "zonaId": 0,
        "liquidoNormal": {
          "$numberDecimal": "100.00"
        },
        "diasTrabajados": 30, "cargoId": 999999,
        "liquidacionId": 292, "tipoLiquidacionId": 10,
        "permanenciaAa": 10,  "permanenciaMm": 10,
        "situacionId": 0,     "personaLiquidacionId": 8888888,
        "antiguedadCargoAa": 10,  "antiguedadCargoMm": 10,
        "dependenciaId": 1, "tipoPersonalId": 1,
        "funcionId": 1, "fechaSituacion": "20241201",
        "subgrupoId": 0,
        "items": [
            {
                "numero": 1,
                "monto": {
                  "$numberDecimal": "50.00"
                },
                "conceptoId": 1058344287,
              },
              {
                "numero": 2,
                "monto": {
                  "$numberDecimal": "50.00"
                },
                "conceptoId": 999999,
              }
        ]
      }
)
