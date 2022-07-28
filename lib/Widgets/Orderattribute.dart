class Orderattribute {
  late String serie;
  late double price;
  late DateTime date;
  late int numberofproducts;
  Orderattribute(String serie,double price, DateTime date, int numberofproducts){
    this.serie=serie;
    this.date=date;
    this.numberofproducts=numberofproducts;
    this.price=price;
  }
}