import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return CupertinoPageScaffold(child: Center());
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.pink.withOpacity(0.2),
        middle: const Text("Dollzmania"),
        border: const Border(),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: SizedBox(
                  width: double.maxFinite,
                  child: DragTarget(
                    onWillAccept: (data) {
                      //print(data);
                      return true;
                    },
                    onAccept: print,
                    builder: (
                      BuildContext context,
                      List<Object?> candidateData,
                      List<dynamic> rejectedData,
                    ) {
                      return Image.network(
                        "https://web.archive.org/web/20170820142339im_/http://www.dollzmaniadressupgames.com/DRESSUP2/dress_nm2017.png",
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress?.cumulativeBytesLoaded ==
                              loadingProgress?.expectedTotalBytes) {
                            return child;
                          }
                          return Text(
                            loadingProgress?.cumulativeBytesLoaded.toString() ??
                                "0",
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Draggable(
                      child: _buildItemDraggable(),
                      feedback: const Text(""),
                      childWhenDragging: _buildItemDraggable(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_buildItemDraggable() {
  return Image.network(
      "https://web.archive.org/web/20170820142339im_/http://www.dollzmaniadressupgames.com/fashion/base-006_0007_Livello-1.png",
      loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress?.cumulativeBytesLoaded ==
        loadingProgress?.expectedTotalBytes) {
      return child;
    }
    return Text(
      loadingProgress?.cumulativeBytesLoaded.toString() ?? "0",
    );
  });
}
