import 'package:mobx/mobx.dart';
part 'test_store.g.dart';

class TestStore = _TestStoreBase with _$TestStore;

abstract class _TestStoreBase with Store {

  List<ReactionDisposer> _disposers;

  void setup() {
    _disposers = [
      reaction<int>((_) => sayi, (value){
            mesaj = value >=10 ? "10 Limitini Aştınız" : "Sayı Henüz Limiti Aşmadı";
      }),
    ];
  }

  dispose(){
    _disposers.forEach((reactionDispos) { reactionDispos(); });
  }

  @observable
  String mesaj = "";

  @observable
  int sayi = 0;

  @action
  arttir() {
    sayi += 1;
  }

  @action
  azalt() {
    sayi -= 1;
  }
}