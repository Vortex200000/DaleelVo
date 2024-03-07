import 'package:ecommerce_project/exports.dart';
import 'package:ecommerce_project/src/features/presntaions/views/Home/Widgets/ProductModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/ButtonSlider.dart';
import '../Widgets/CartScreen.dart';
import '../Widgets/CategorysScreen.dart';
import '../Widgets/CustomBtn.dart';

import '../Widgets/MainScreen.dart';
import '../Widgets/ProductCard.dart';
import '../Widgets/ProductSlider.dart';
import '../Widgets/ProfileScrenn.dart';
import '../Widgets/SavedScreen.dart';
import '../Widgets/Slider.dart';
import '../Widgets/SliderModel.dart';

class MopileScreenH extends StatefulWidget {
  const MopileScreenH({super.key});

  @override
  State<MopileScreenH> createState() => _MopileScreenHState();
}

class _MopileScreenHState extends State<MopileScreenH> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            elevation: 0,
            showSelectedLabels: true,
            selectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            selectedItemColor: Colors.black,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/svg/NavBar/clothes-hanger-svgrepo-com.svg',
                    width: 20.rW,
                    height: 20.rH,
                  ),
                  label: 'تسوق'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/svg/NavBar/category-2-svgrepo-com.svg',
                    width: 20.rW,
                    height: 20.rH,
                  ),
                  label: 'المصنفات'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/svg/NavBar/bookmark-outlined-saved-svgrepo-com.svg',
                    width: 20.rW,
                    height: 20.rH,
                  ),
                  label: 'اكتشف'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/svg/NavBar/bag-1-svgrepo-com.svg',
                    width: 20.rW,
                    height: 20.rH,
                  ),
                  label: 'العربة'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/svg/NavBar/profile-svgrepo-com.svg',
                    width: 20.rW,
                    height: 20.rH,
                  ),
                  label: 'ملف تعريف'),
            ]),
        body: HomeScreen[index]);
  }

  List<Widget> HomeScreen = [
    const MainScreen(),
    const MobileScreen(),
    const SavedScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];
}
