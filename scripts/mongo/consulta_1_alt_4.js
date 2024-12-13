db.personasLiquidaciones.find(
  {  liquidacionesId: 292,
    antiguedadTotalMm: 6 
  }
).sort({"documento":1});
