import 'package:ecommerce_project/exports.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/theme/app_color.dart';
import '../Home.dart';
import 'ProductDetailsSliderItem.dart';
import 'ProductModel.dart';
import 'Slider.dart';
import 'SliderModel.dart';

class ProductDetails extends StatefulWidget {
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // const ProductDetails({super.key});
  List<String> productImages = [];
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    ProductModel data = Get.arguments;
    // productImages[0] = data.productImg!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          data.profuctName ?? '',
          style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Get.to(() => const HomeScreen());
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                    'assets/icons/svg/bookmark-svgrepo-com.svg')),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: SizeConfig.screenWidth,
            height: 400.rH,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              physics: const PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Center(
                  child: ProductDetailsSliderItem(data.productImg ?? '')),
              itemCount: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.manifactor ?? '',
                  style: GoogleFonts.cairo(
                    color: Color(0xffacacac),
                  ),
                ),
                SizedBox(
                  height: 20.rH,
                ),
                Text(
                  data.profuctName ?? '',
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.w700, fontSize: 22),
                ),
                SizedBox(
                  height: 20.rH,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        flag == true ? 'موجود في المستودع' : 'غير متاح حاليا',
                        style: GoogleFonts.cairo(
                            fontSize: 11, color: Colors.white),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: flag == true?Color(0xff2dd673) : Color(0xffed5a5c)),
                    ),

                    // Text(data),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
