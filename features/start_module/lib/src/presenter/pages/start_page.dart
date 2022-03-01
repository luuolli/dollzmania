import 'package:sucrilhos_design_system/sucrilhos_design_system.dart';

class StartPage extends StatelessWidget {
  final _playerNameController = TextEditingController();

  final Function(String playerName)? onPlay;

  StartPage({Key? key, this.onPlay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: 30),
      child: CupertinoPageScaffold(
        backgroundColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/girl.png',
                  height: mediaQuery.size.width * 0.5,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Dollzmania\n',
                    children: [
                      TextSpan(
                        text: 'Bruna Edition',
                        style: theme.textTheme.caption,
                      ),
                    ],
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.end,
                  style: theme.textTheme.headline1,
                ),
              ],
            ),
            CupertinoTextField(
              controller: _playerNameController,
              padding: theme.buttonTheme.padding,
              decoration: BoxDecoration(
                color: theme.colorScheme.onBackground.withOpacity(0.3),
                borderRadius: BorderRadius.circular(4),
              ),
              placeholder: 'Nome',
              placeholderStyle: theme.textTheme.bodyText2?.copyWith(
                height: 1.4,
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: AppShadows.defaultShadow(theme),
                ),
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(8),
                  color: theme.primaryColor,
                  child: const Text('Jogar'),
                  onPressed: () {
                    onPlay?.call(_playerNameController.value.text);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
