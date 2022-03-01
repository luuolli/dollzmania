import 'package:sucrilhos_design_system/sucrilhos_design_system.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CupertinoPageScaffold(
      backgroundColor: AppColors.transparent,
      child: Center(
        child: Text(
          'Oi',
          style: theme.textTheme.bodyText1,
        ),
      ),
    );
  }
}
