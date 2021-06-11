import 'package:animation_demos/business_logic/size_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AnimatedContainerDemo extends StatelessWidget {
  const AnimatedContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final sizeManager = Provider.of<SizeManager>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          sizeManager.increaseSize();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Consumer<SizeManager>(

          builder: (_, data, __){
            return AnimatedContainer(
              width: data.size,
              height: data.size,
              color: Colors.blue,
              duration: Duration(seconds: 2),
            );
          },
        ),
      ),
    );
  }
}
