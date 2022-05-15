import 'package:sucrilhos_design_system/sucrilhos_design_system.dart';

class ClothingItemWidget<T extends Object> extends StatelessWidget {
  final T? data;
  final void Function(int index)? onSelect;
  final Image? image;

  const ClothingItemWidget({
    Key? key,
    this.data,
    this.onSelect,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<T>(
      data: data,
      feedback: image != null ? Image(image: image!.image) : Container(),
      child: Container(
        width: 80,
        height: 80,
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.transparent,
          image: image != null
              ? DecorationImage(
                  image: image!.image,
                  fit: BoxFit.fitHeight,
                )
              : null,
          border: Border.all(
            color: AppColors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
