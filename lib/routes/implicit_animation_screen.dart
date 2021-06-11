import 'package:animation_demos/business_logic/size_manager.dart';
import 'package:animation_demos/routes/animated_container_demo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImplicitAnimationScreen extends StatelessWidget {
  const ImplicitAnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text('1'),
            title: Text('Animated Container'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ChangeNotifierProvider(
                    create: (context) => SizeManager(),
                    child: AnimatedContainerDemo());
              }));
            },
          ),
          ListTile(
            leading: Text('2'),
            title: Text('Coming Up'),
          ),
          ListTile(
            leading: Text('3'),
            title: Text('Coming Up'),
          ),
        ],
      ),
    );
  }
}
