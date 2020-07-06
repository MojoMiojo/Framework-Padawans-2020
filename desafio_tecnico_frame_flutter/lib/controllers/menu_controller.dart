import 'package:mobx/mobx.dart';
part 'menu_controller.g.dart';

class MenuController = _MenuController with _$MenuController;

abstract class _MenuController with Store {
  @observable
  int menuIndex = 0;

  @action
  void alterarMenuIndex(int newIndex) {
    this.menuIndex = newIndex;
  }
}