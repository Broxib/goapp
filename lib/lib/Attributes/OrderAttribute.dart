class Orderattribute {
  late String serie;
  late double price;
  late String date;
  late int numberofproducts;
  late String status;
  Orderattribute(String serie,double price, String date, int numberofproducts,String status){
    this.serie=serie;
    this.date=date;
    this.numberofproducts=numberofproducts;
    this.price=price;
    this.status=status;
  }
}