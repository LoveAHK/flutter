import 'package:praktika2/domain/entity/typeprodukt_entity.dart';

class typeprodukt extends typeproduktEntity
{
late int id;
final String name;

  typeprodukt({required this.id,required this.name}) :super(id:id,name : name);
  
  Map<String, dynamic> toMap(){
    return {'name':name};
  }

  factory typeprodukt.toFromMap(Map<String, dynamic> json)
  {
    return typeprodukt(id: json ['id'],name: json ['name']);
  }
}