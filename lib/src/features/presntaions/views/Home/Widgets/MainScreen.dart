import 'package:ecommerce_project/exports.dart';
import 'package:ecommerce_project/src/features/presntaions/views/Home/Widgets/custom_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ButtonSlider.dart';
import 'CustomBtn.dart';
import 'ProductModel.dart';
import 'ProductSlider.dart';
import 'Slider.dart';
import 'SliderModel.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<CustomBtn> customBtn = [
    CustomBtn(
      iconBath: "assets/icons/svg/women-dress-svgrepo.svg",
      lapel: "للنساء",
    ),
    CustomBtn(
      iconBath: "assets/icons/svg/men-clothes.svg",
      lapel: "للرجال",
    ),
    CustomBtn(
      iconBath: "assets/icons/svg/discount-svgrepo.svg",
      lapel: "الخصومات",
    ),
    CustomBtn(
      lapel: "جميع الاقسام",
    ),
  ];
  List<SliderModel> sliderModel = [
    SliderModel(
        headLine1: "استكشف المجموعه الجديدة",
        headLine2: "مع الشحن المجاني",
        headLine3: "تسوق الان",
        imagePath: "assets/images/Slider/1.jpg"),
    SliderModel(
        headLine1: "استكشف المجموعه الجديدة",
        headLine2: "مع الشحن المجاني",
        headLine3: "تسوق الان",
        imagePath: "assets/images/Slider/2.jpg"),
    SliderModel(
        headLine1: "استكشف المجموعه الجديدة",
        headLine2: "مع الشحن المجاني",
        headLine3: "تسوق الان",
        imagePath: "assets/images/Slider/3.jpg"),
  ];

  List<ProductModel> productmodel = [
    ProductModel(
        productImg: 'assets/images/Slider/1.jpg',
        profuctName: 'بدله رجالي',
        discountQunti: "24",
        afterDiscountPrice: 299.43,
        beforDiscountPrice: 534.4,
        manifactor: 'الشاذلي'),
    ProductModel(
        productImg: 'assets/images/Slider/2.jpg',
        discountQunti: "24",
        profuctName: 'تيشرت ولادي',
        afterDiscountPrice: 299.43,
        beforDiscountPrice: 534.4,
        manifactor: 'الشاذلي'),
    ProductModel(
        profuctName: 'لابتوب',
        productImg: 'assets/images/Slider/3.jpg',
        discountQunti: '24',
        afterDiscountPrice: 299.43,
        beforDiscountPrice: 534.4,
        manifactor: 'الشاذلي'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const CustomAppBar(),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20.rH,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Text(
                    "الاقسام",
                    style: GoogleFonts.cairo(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: ButtonSlider(customBtn)),
                SliderH(sliderModel),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 30),
                  child: Text(
                    "ربما يعجبك ايضا",
                    style: GoogleFonts.cairo(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ProductsSlider(productmodel),
                ),
                SizedBox(
                  height: 50.rH,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
