ids = db.personasLiquidaciones.aggregate(
    [
      { $match: { personaId: 24380 } },
      { $project: { id: 1, _id: 0 } }
    ]
).map(per=>per.id).toArray()

db.personasLiquidaciones.deleteMany({ id: { $in: ids } })

db.cargosLiquidaciones.deleteMany({ personaLiquidacionId: { $in: ids } })