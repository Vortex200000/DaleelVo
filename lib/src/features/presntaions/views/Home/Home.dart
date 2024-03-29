import '../../../../../../exports.dart';
import 'screens/desktop_screen.dart';
import 'screens/mobile_screen.dart';
import 'screens/tablet_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      body: const SafeArea(
        child: AdaptiveLayoutWidget(
          mobileLayout: MopileScreenH(),
          tabletLayout: TapletScreenH(),
          desktopLayout: DesktopScreenH(),
        ),
      ),
    );
  }
}
