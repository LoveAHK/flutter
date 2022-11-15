
import 'package:praktika2/domain/entity/sell_entity.dart';

class Sell extends SellEntity
{
late int id;
final String adres;

  Sell({required this.id,required this.adres}) :super(id:id,adres : adres);
  
  Map<String, dynamic> toMap(){
    return {'adres':adres};
  }

  factory Sell.toFromMap(Map<String, dynamic> json)
  {
    return Sell(id: json ['id'],adres: json ['adres']);
  }
}