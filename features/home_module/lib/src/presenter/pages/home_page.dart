import 'package:game_module/game_module.dart';
import 'package:sucrilhos_design_system/sucrilhos_design_system.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final playerName = ModalRoute.of(context)?.settings.arguments as String;

    final theme = Theme.of(context);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.zero,
        backgroundColor: AppColors.transparent,
        border: const Border(),
        middle: Text(playerName),
        trailing: CupertinoButton(
          child: const Icon(CupertinoIcons.repeat),
          onPressed: () {},
        ),
        leading: CupertinoButton(
          child: const Icon(CupertinoIcons.settings),
          onPressed: () {},
        ),
      ),
      backgroundColor: AppColors.transparent,
      child: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20).copyWith(
          top: 120,
          bottom: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Organização:',
                  style: theme.textTheme.bodyText2,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 60,
                  child: ReorderableListView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    onReorder: (int oldIndex, int newIndex) {},
                    children: List.generate(
                      20,
                      (index) => SortableItemWidget(
                        key: Key(index.toString()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Image.asset('assets/images/girl.png'),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 0,
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: Text(
                        'Categorias',
                        style: theme.textTheme.bodyText1,
                      ),
                      elevation: 0,
                      items: const [
                        DropdownMenuItem(
                          child: Text('Categoria 1'),
                          value: 'categoria 1',
                        ),
                        DropdownMenuItem(
                          child: Text('Categoria 2'),
                          value: 'categoria 1',
                        ),
                        DropdownMenuItem(
                          child: Text('Categoria 3'),
                          value: 'categoria 1',
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  SingleChildScrollView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        20,
                        (index) => const ClothingItemWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
