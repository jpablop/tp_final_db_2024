a_borrar = db.personasLiquidaciones.findOneAndDelete( 
    {liquidacionesId: 292, personaId: 999999}
)

db.cargosLiquidaciones.deleteMany(
    {personaLiquidacionId: a_borrar.id}
)