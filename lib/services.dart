
import 'package:http/http.dart' as http;
import './post_model.dart';
import 'dart:io';



String url = 'https://jsonplaceholder.typicode.com/posts';

//Future<List<Post>> getAllPosts() async {
//  final response = await http.get(url);
//  print(response.body);
//  return allPostsFromJson(response.body);
//}

Future<Post> getPost() async{
  final response = await http.get('$url/1');
  return postFromJson(response.body);
}

Future<Post> createPost(Post post) async{
  final response = await http.post('$url',
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader : ''
      },
      body: postToJson(post)
  );
  return postFromJson(response.body);
}
