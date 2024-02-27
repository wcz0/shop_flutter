enum NavigationEnum {
  home(value: 0, label: '首页', path: '/'),
  category(value: 1, label: '分类', path: '/category'),
  message(value: 2, label: '消息', path: '/message'),
  cart(value: 3, label: '购物车', path: '/cart'),
  profile(value: 4, label: '我的', path: '/profile');

  final int value;
  final String label;
  final String path;

  const NavigationEnum(
      {required this.value, required this.label, required this.path});

  static NavigationEnum parse(int i) {
    return NavigationEnum.values[i];
  }
}
