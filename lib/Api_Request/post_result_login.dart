import 'dart:convert';
import 'package:http/http.dart' as http ;

class PostResult {
  //String statusCode;
  String phoneNumber;
  String fullname;
  String message;

  PostResult({this.phoneNumber, this.fullname, this.message}) ;

  factory PostResult.createPostResult(Map<String, dynamic> object)
  {
    return PostResult(
      //message: object['message'],
      phoneNumber: object['phoneNumber'],
      fullname: object['fullname'],
      message: object['message']
    ) ;
  }

  static Future<PostResult> connectToApI(String username, String password ) async //data request ke API
  {
    
    String url ='https://2974b325.ap.ngrok.io/cust/auth/login';

    var apiResult = await http.post(url, body : {"username" : username, "password" : password}) ;   //body -> Parameter untuk request, apa aja yg dibutuhin untuk request
    var jsonObject = json.decode(apiResult.body) ; 

    return PostResult.createPostResult(jsonObject) ;
 }
}


















/*class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({this.id, this.name,this.job,this.created}) ;

  factory PostResult.createPostResult(Map<String, dynamic> object)
  {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt']
    ) ;
  }

  static Future<PostResult> connectToApI(String name, String job) async //data request ke API
  {
    String apiURL = "https://reqres.in/api/users" ;

    var apiResult = await http.post(apiURL, body : {"name" : name, "job" : job,}) ;   //body -> Parameter untuk request, apa aja yg dibutuhin untuk request
    var jsonObject = json.decode(apiResult.body) ; //

    return PostResult.createPostResult(jsonObject) ;
  }
}*/