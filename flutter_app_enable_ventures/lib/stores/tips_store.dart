import 'package:mobx/mobx.dart';
part 'tips_store.g.dart';

class TipsStore = _TipsStore with _$TipsStore;

abstract class _TipsStore with Store{

  @observable
  bool  like = false;

  @observable
  bool  dislike = false;

  

  @action
  void setLike(bool likeTip){
    like = likeTip;
    dislike = false;
  }

  @action
  void setDislike(bool dislikeTip){
    like = false;
    dislike = dislikeTip;
  }

  

}