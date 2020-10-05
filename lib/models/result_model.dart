class ResultModel {
  double areaFloor;
  double price;
  int piecesByWidth;
  int piecesByLength;

  ResultModel({
    this.price,
    this.areaFloor,
    this.piecesByWidth,
    this.piecesByLength,
  });

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFloor => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFloor;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
  double get priceCalculatorWithoutFooter => price * areaWithoutFooter;
  double get priceCalculatorWithFooter => price * areaWithFooter;
}
