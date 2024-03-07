import 'package:ecommerce_project/exports.dart';

import 'ProductCard.dart';
import 'ProductModel.dart';

class ProductsSlider extends StatelessWidget {
  // const ProductsSlider({super.key});
  List<ProductModel> productmodel;

  ProductsSlider(this.productmodel);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250.rH,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productmodel.length,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(right: 20, left: 20),
            itemBuilder: (context, index) =>
                ProductCard(productmodel[index], index, productmodel.length)));
  }
}
