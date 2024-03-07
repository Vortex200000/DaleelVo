import '../../../../../../../exports.dart';
import '../../Home/Home.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: kPageEdge,
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * .3,
        ),
        const CustomTextForm(
          title: 'email',
        ),
        SizedBox(height: 10.rH),
        const CustomTextForm(
          title: 'password',
        ),
        SizedBox(height: 20.rH),
        AdaptiveFilledButtonWidget(
            press: () {
              // navigate to home
              Routes.homeScreen.offPage();
            },
            label: 'sign in'),
        TextButton.icon(
            onPressed: () {

            },
            icon: const Icon(Icons.lock_open),
            label: Text(
              'Forget password',
              style: context.labelMedium!
                  .copyWith(color: context.colorScheme.onBackground),
            ))
      ],
    );
  }
}
