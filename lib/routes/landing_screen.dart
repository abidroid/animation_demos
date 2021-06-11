import 'package:animation_demos/routes/implicit_animation_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listing Screen'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text('1'),
            title: Text('Implicit Animations'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ImplicitAnimationScreen();
              }));
            },
          ),
          ListTile(
            leading: Text('2'),
            title: Text('Animation Library'),
          ),
          ListTile(
            leading: Text('3'),
            title: Text('Custom Animations'),
          ),
        ],
      ),
    );
  }
}
