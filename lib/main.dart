

import 'package:flutter/material.dart';
import 'package:working_with_api/post_model.dart';
import 'package:working_with_api/services.dart';

void main(){

  return runApp(PostApplication());
}

class PostApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Post Application"),),

        body: Center(child: 
          FutureBuilder<Post>(future: getPost(),
          builder: (context,snapshot){
            return Text('${snapshot.data.title}');
          },),),
      ),
    );
  }

}