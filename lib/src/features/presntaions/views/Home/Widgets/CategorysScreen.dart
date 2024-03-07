import '../../../../../../../exports.dart';

import 'categoey_item.dart';
import 'category_model.dart';
import 'custom_app_bar.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  List<CategoryModel> listCategory = [
    CategoryModel(text: "النساء", image: AppImages.test_women),
    CategoryModel(text: "الرجال", image: AppImages.test_men),
    CategoryModel(text: "الاطفال", image: AppImages.test_children),
    CategoryModel(text: "اكسسوارات", image: AppImages.test_accessories),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: kPageEdge,
                  child: const CustomTextForm(
                    hint: "جد شيئاً...",
                    prefixIcon: Icon(Icons.search_sharp),
                    radius: 12,
                  ),
                ),
                Padding(
                  padding: kPageEdge,
                  child: Text(
                    "الفئات",
                    style: context.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryItem(
                      categoryModel: listCategory[index],
                    );
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
