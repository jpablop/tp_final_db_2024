db.getCollection(
  'personasLiquidaciones'
).aggregate(
  [
    {
      $match: {
        liquidacionesId: 293,
        antiguedadTotalAa: { $gte: 15 }
      }
    },
    { $project: { documento: 1 } }
  ]
  );