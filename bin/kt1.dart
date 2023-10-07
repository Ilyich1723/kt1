import 'dart:io';

import 'package:kt1/kt1.dart' as kt1;
import 'package:dio/dio.dart';

void main(List<String> arguments) async{
Dio client = Dio();
String url = 'https://dummyjson.com/products';
var responcse = await client.get(url);
Map<String,dynamic> data = responcse.data;

int count = 0;
for(var el in data['products']){
  if (el['price']<1000){
count++;
}
}
print(count);

}
