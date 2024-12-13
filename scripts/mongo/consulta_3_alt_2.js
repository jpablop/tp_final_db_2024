db.personasLiquidaciones.aggregate(
  [
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
      $match: { 
        liquidacionesId: 292,
        "cargos.dependenciaId": 12  
      }
    },
    {
      $project: {
        cargo_id: "$cargos.cargoId",
        "_id": 0
      }
    }
  ]
 )
