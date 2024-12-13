db.personasLiquidaciones.aggregate(
  [
    {
      $match:  {  liquidacionesId: 292 }
    },
    {
      $lookup: {
        from: "cargosLiquidaciones",
        localField: "id",
        foreignField: "personaLiquidacionId",
        as: "cargos"
      }
    },
    {
      $unwind: { path: "$cargos" }
    },
    {
      $match: { "cargos.dependenciaId": 12  }
    },
    {
      $project: {
        cargo_id: "$cargos.cargoId",
        "_id": 0
      }
    }
  ]
 )
