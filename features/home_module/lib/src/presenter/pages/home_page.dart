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
                SingleChildScrollView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      20,
                      (index) => Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: AppColors.darkBlue,
                          border: Border.all(
                            color: AppColors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
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
                        (index) => Container(
                          width: 80,
                          height: 80,
                          margin: const EdgeInsets.only(right: 5),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.transparent,
                            image: DecorationImage(
                              image:
                                  Image.asset('assets/images/girl.png').image,
                              fit: BoxFit.fitHeight,
                            ),
                            border: Border.all(
                              color: AppColors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
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
