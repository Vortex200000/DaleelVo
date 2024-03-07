import 'package:ecommerce_project/exports.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/theme/app_color.dart';
import 'ProductModel.dart';

class ProductCard extends StatelessWidget {
  // const ProductCard({super.key});

  ProductModel productModel;
  int index;
  int listLi;

  ProductCard(this.productModel, this.index, this.listLi);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: index == listLi - 1 ? 0 : 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {},
        child: Container(
          height: 250.rH,
          width: 170.rW,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColor.borderColor, width: 2)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 100.rH,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.transparent)),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.transparent),
                          image: DecorationImage(
                              image: AssetImage('${productModel.productImg}'),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.discountContColour),
                        child: Text(
                          '${productModel.discountQunti}% off',
                          style: GoogleFonts.cairo(
                              color: Colors.white, fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.rH,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${productModel.manifactor}',
                        style: GoogleFonts.cairo(
                            fontSize: 8, color: const Color(0xffd4d4d4)),
                      ),
                      SizedBox(
                        height: 15.rH,
                      ),
                      SizedBox(
                        height: 20.rH,
                        child: Text(
                          '${productModel.profuctName}',
                          style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(
                        height: 50.rH,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            "${productModel.afterDiscountPrice}جنية",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold,
                                color: context.colorScheme.primary),
                            overflow: TextOverflow.ellipsis,
                          )),
                          SizedBox(
                            width: 3.rW,
                          ),
                          Expanded(
                              child: Text(
                                  "${productModel.beforDiscountPrice}جنية",
                                  style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffd4d4d4),
                                      decoration: TextDecoration.lineThrough),
                                  overflow: TextOverflow.ellipsis)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
