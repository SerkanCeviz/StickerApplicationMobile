import 'package:get/get.dart';

class Controller extends GetxController {

  var userId;

  setUserId(int){
    this.userId=int;
  }
  getUserId(){
    return this.userId;
  }
}
