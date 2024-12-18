db.personasLiquidaciones.find(
  {  liquidacionesId: 292,
    antiguedadTotalAa: 15 
  }
).sort({"documento":1})
