db.personasLiquidaciones.aggregate(
  [
    {
      $match: {
        liquidacionesId: 292,
        antiguedadTotalAa: 15 
      }
    },
    { $project: { documento: 1 } }
  ]
);
