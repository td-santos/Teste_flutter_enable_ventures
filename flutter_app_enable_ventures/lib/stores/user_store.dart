import 'package:flutter_app_enable_ventures/util.dart';
import 'package:mobx/mobx.dart';
part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store{

  @observable
  String  id = '';

  @observable
  String  name = '';

  @observable
  String  token = '';

  @observable
  String  photo = '';

  @action
  void setKeys(String idUser, String nameUser, String tokenUser, String photoUser){
    id = idUser;
    name = nameUser;
    token = tokenUser;
    photo =  '$baseUrl$photoUser';
  }

}