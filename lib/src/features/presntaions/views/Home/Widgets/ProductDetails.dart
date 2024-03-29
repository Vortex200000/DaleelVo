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
  bool wishFlag = false;

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
                onPressed: () {
                  if (wishFlag == false) {
                    setState(() {
                      wishFlag = true;
                    });
                  } else {
                    setState(() {
                      wishFlag = false;
                    });
                  }
                },
                icon: SvgPicture.asset(
                  'assets/icons/svg/bookmark-svgrepo-com.svg',
                  color: wishFlag == false ? Colors.black : AppColor.primary,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
              padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.manifactor ?? '',
                    style: GoogleFonts.cairo(
                      color: const Color(0xffacacac),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: flag == true
                                ? const Color(0xff2dd673)
                                : const Color(0xffed5a5c)),
                        child: Text(
                          flag == true ? 'موجود في المستودع' : 'غير متاح حاليا',
                          style: GoogleFonts.cairo(
                              fontSize: 11, color: Colors.white),
                        ),
                      ),

                      Row(
                        children: [
                          Text(
                            '(مراجعه 120)',
                            style: GoogleFonts.cairo(color: Color(0xffacacac)),
                          ),
                          SizedBox(
                            width: 5.rW,
                          ),
                          const Text('4.4'),
                          SizedBox(
                            width: 5.rW,
                          ),
                          const Icon(
                            Icons.star_rate_rounded,
                            color: Colors.amber,
                          ),
                        ],
                      )

                      // Text(data),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'معلومات المنتج',
                          style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                          maxLines: 5,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${data.manifactor}',
                          style: GoogleFonts.cairo(color: Color(0xffd4d4d4)),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      // call add to cart api here
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            borderSide: BorderSide.none),
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 700.rH,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20)),
                                color: Colors.white),
                            child: Center(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: SvgPicture.asset(
                                    'assets/icons/svg/checked-tick-svgrepo-com.svg',
                                    width: 200.rW,
                                    height: 200.rH,
                                  )),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'تمت الاضافه الي سلة التسوق',
                                            style: GoogleFonts.cairo(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22.rF),
                                          ),
                                          SizedBox(
                                            height: 10.rH,
                                          ),
                                          Text(
                                            'اضغط علي زر الدفع لاتمام عملية الشراء',
                                            style: GoogleFonts.cairo(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.rF,
                                                color: Color(0xffbebebe)),
                                          ),
                                          SizedBox(
                                            height: 70.rH,
                                          ),
                                          SizedBox(
                                            width: SizeConfig.screenWidth,
                                            height: 70.rH,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    side: BorderSide(
                                                        color: AppColor
                                                            .borderColor,
                                                        width: 2),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        13)),
                                                    backgroundColor:
                                                        Colors.white),
                                                onPressed: () {
                                                  Get.to(() => HomeScreen());
                                                },
                                                child: Text(
                                                  'مواصلة التسوق',
                                                  style: GoogleFonts.cairo(
                                                      color: Colors.black),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 20.rH,
                                          ),
                                          SizedBox(
                                            width: SizeConfig.screenWidth,
                                            height: 70.rH,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    side: BorderSide(
                                                      color: Colors.transparent,
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        13)),
                                                    backgroundColor: AppColor
                                                        .discountContColour),
                                                onPressed: () {},
                                                child: Text(
                                                  'الدفع',
                                                  style: GoogleFonts.cairo(
                                                      color: Colors.white),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    borderRadius: BorderRadius.circular(13),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 70.rH,
                          width: 210.rW,
                          decoration: BoxDecoration(
                              color: AppColor.discountContColour,
                              border: Border.all(color: Colors.transparent),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  bottomLeft: Radius.circular(13))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'جنيه ${data.beforDiscountPrice.toString()}',
                                  style: GoogleFonts.cairo(color: Colors.white),
                                ),
                                Text(
                                  'سعر الوحده',
                                  style: GoogleFonts.cairo(
                                      color: AppColor.highLight),
                                )
                              ]),
                        ),
                        Expanded(
                          child: Container(
                            height: 70.rH,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(13),
                                    bottomRight: Radius.circular(13))),
                            child: Center(
                                child: Text(
                              'اضف الي السله',
                              style: GoogleFonts.cairo(color: Colors.white),
                            )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
