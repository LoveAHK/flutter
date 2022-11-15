
import 'package:praktika2/domain/entity/produkt_entity.dart';

class Produkt extends ProduktEntity{
late int id;
final String name;
final double price;
final int id_type;
final int id_provider;

  Produkt({required this.id,required this.name, required this.price,required this.id_type, required this.id_provider}) 
  :super(id:id,name : name, price:price, id_type:id_type, id_provider:id_provider);

  Map<String, dynamic> toMap(){
    return {'name':name, 'price':price, 'id_type':id_type, 'prid_providerice':id_provider, };
  }

  factory Produkt.toFromMap(Map<String, dynamic> json)
  {
    return Produkt(id: json ['id'],name: json ['name'], price: json ['price'], id_type: json ['id_type'], id_provider: json ['id_provider']);
  }
}