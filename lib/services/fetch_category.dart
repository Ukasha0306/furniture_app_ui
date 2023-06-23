import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/categories.dart';


 List<Category> getList = [];


 fetchCategory()async {
   try {
     final response = await http.get(Uri.parse(
         "https://5f210aa9daa42f001666535e.mockapi.io/api/categories"));

     var data = jsonDecode(response.body.toString());

     if (response.statusCode == 200) {
       for (int i = 0; i < data.length; i++) {
         Map<String, dynamic> categories = data[i];
         Category model = Category.fromJson(categories);
         getList.add(model);
       }
       return getList;
     }
     return getList;
   }
   catch (e) {
     print(e);
   }
 }