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
         $unwind: { path: "$cargos" },
       },
       { 
         $unwind: { path: '$cargos.items' } 
       },
       {
        $match: { 'cargos.items.conceptoId': 1058344287 }
       },
       {
        $group: {
          _id: 'cargos.items.conceptoId',
          promedio: { $avg: '$cargos.items.monto' }
        }
       }
     ] )

