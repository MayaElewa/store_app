import 'package:store_app/models/product_model.dart';
 
import 'package:store_app/helper/api.dart';

class UpdateProduct{
Future<ProductModel> updateProduct
({required String title ,required String price ,required String description,
required String image,required String category } ) async {
  Map<String, dynamic> data = await Api().post(
        url: "https://fakestoreapi.com/products/:id", body: {

   // "id": 7,
    "title": title,
    "price":  price ,
    "description":description,
    "image": image,
    "category": category

        }, 
  );
  return ProductModel.fromJson(data);
}
}