import 'package:ecommerce_project/exports.dart';

import 'SliderItem.dart';
import 'SliderModel.dart';

class SliderH extends StatefulWidget {
  // const Slider({super.key});
  List<SliderModel> sliderModel;

  SliderH(this.sliderModel);

  @override
  State<SliderH> createState() => _SliderHState();
}

class _SliderHState extends State<SliderH> {
  // ScrollController scrollController = ScrollController();

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     double minScrollExtent = scrollController.position.minScrollExtent;
  //     double maxScrollExtent = scrollController.position.maxScrollExtent;
  //     scrollAfter(scrollController, 25, maxScrollExtent, minScrollExtent,
  //         maxScrollExtent);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var listview = SizedBox(
      width: SizeConfig.screenWidth,
      height: 200.rH,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: widget.sliderModel.length,
          scrollDirection: Axis.horizontal,
          reverse: true,
          // controller: scrollController,
          itemBuilder: (context, index) =>
              SliderItem(widget.sliderModel[index])),
    );

    return listview;
  }

  // void scrollAfter(ScrollController scrollController, int seconds, double max,
  //     double min, double direction) {
  //   var scrollDuratioin = Duration(seconds: 10);
  //   scrollController
  //       .animateTo(direction, duration: scrollDuratioin, curve: Curves.linear)
  //       .then((value) {
  //     direction = direction == max ? min : max;
  //
  //     scrollAfter(scrollController, seconds, max, min, direction);
  //   });
  // }
}
