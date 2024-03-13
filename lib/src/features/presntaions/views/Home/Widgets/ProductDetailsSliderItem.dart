import 'package:ecommerce_project/exports.dart';

class ProductDetailsSliderItem extends StatelessWidget {
  String imagePath;

  ProductDetailsSliderItem(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: SizeConfig.screenWidth * 0.85,
          height: 400.rH,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
