import '../../../../../../exports.dart';

import 'category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 120,
            width: SizeConfig.screenWidth,
            child: Image.asset(
              categoryModel.image,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            categoryModel.text,
            style: context.headlineSmall!.copyWith(
                color: context.colorScheme.background,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
