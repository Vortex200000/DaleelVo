import 'package:ecommerce_project/exports.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/theme/app_color.dart';

class CustomBtn extends StatefulWidget {
  // const CustomBtn({super.key});
  String? iconBath;
  String? lapel;

  CustomBtn({this.iconBath, this.lapel});

  @override
  State<CustomBtn> createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        width: 140.rW,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        color: flag == false
                            ? AppColor.borderColor
                            : context.colorScheme.primary,
                        width: 2.rW)),
                elevation: 0,
                backgroundColor: flag == false
                    ? Colors.white70
                    : context.colorScheme.primary),
            onPressed: () {
              if (flag == false) {
                setState(() {
                  flag = true;
                });
              } else {
                setState(() {
                  flag = false;
                });
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                widget.iconBath != null
                    ? Row(
                        children: [
                          SvgPicture.asset(
                            widget.iconBath.toString(),
                            height: 20.rH,
                            width: 20.rW,
                            color:  flag == false ? Colors.black : Colors.white,
                          ),
                          SizedBox(
                            width: 10.rW,
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
                Expanded(
                  child: Text(
                    widget.lapel.toString(),
                    style: GoogleFonts.cairo(
                      color: flag == false ? Colors.black : Colors.white,
                      fontSize: 11.rF,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
