db.personasLiquidaciones.aggregate( [
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
       { $group: { 
            _id: "$cargos.dependenciaId", 
            count: { $sum: 1 }
         } 
        }
     ] )
   