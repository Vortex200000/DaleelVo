import 'package:ecommerce_project/exports.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SliderModel.dart';

class SliderItem extends StatelessWidget {
  // const SliderItem({super.key});

  SliderModel sliderModel;

  SliderItem(this.sliderModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Center(
              child: Image.asset(
            sliderModel.imagePath.toString(),
            width: SizeConfig.screenWidth,
            fit: BoxFit.cover,
          )),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(sliderModel.headLine1.toString(),
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.rF,
                        color: Colors.white)),
                Text(sliderModel.headLine2.toString(),
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.rF,
                        color: Colors.white)),
                SizedBox(
                  height: 10.rH,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(sliderModel.headLine3.toString(),
                      style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.rF,
                          color: Colors.white)),
                ),
                SizedBox(
                  height: 1.rH,
                ),
                Container(
                  width: 80.rW,
                  height: 1.rH,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
