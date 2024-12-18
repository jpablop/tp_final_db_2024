db.personasLiquidaciones.findOneAndUpdate(
    {liquidacionesId: 292, personaId: 999999},
    {$set: {apellido: 'PEREZ2'} }
)
