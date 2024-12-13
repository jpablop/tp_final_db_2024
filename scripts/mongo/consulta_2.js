db.personasLiquidaciones.aggregate([
    { $match: { liquidacionesId: 292 } },
    { $group: { _id: "$antiguedadTotalAa", count: { $sum: 1 } } }
  ])
  