import '../../../../../../exports.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPageEdge,
      child: Row(
        children: [
          Image.asset(
            PngIcons.logo,
            width: 60.rW,
            height: 60.rH,
          ),
          const Spacer(),
          InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: SvgPicture.asset(
                "assets/icons/svg/chat-dot.svg",
                height: 20.rH,
                width: 20.rW,
              )),
          SizedBox(
            width: 30.rW,
          ),
          InkWell(

              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: SvgPicture.asset(
                "assets/icons/svg/notification-bell.svg",
                height: 20.rH,
                width: 20.rW,
              )),


        ],
      ),
    );
  }
}
