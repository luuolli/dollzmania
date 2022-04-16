import 'package:sucrilhos_design_system/sucrilhos_design_system.dart';

class SortableItemWidget extends StatelessWidget {
  final Function(int index)? onSelect;
  final Image? image;

  const SortableItemWidget({
    Key? key,
    this.image,
    this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: 60,
      height: 60,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: image != null
            ? DecorationImage(
                image: image!.image,
                fit: BoxFit.cover,
              )
            : null,
        border: Border.all(color: AppColors.white, width: 2),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
