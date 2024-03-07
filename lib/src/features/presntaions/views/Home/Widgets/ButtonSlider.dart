import 'package:ecommerce_project/exports.dart';

import 'CustomBtn.dart';

class ButtonSlider extends StatelessWidget {
  // const ButtonSlider({super.key});
  List<CustomBtn> customBtn;

  ButtonSlider(this.customBtn);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.rH,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 20 , right: 20),

        scrollDirection: Axis.horizontal,
          itemCount: customBtn.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => customBtn[index]),
    );
  }
}
