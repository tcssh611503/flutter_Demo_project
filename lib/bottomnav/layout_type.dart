import 'package:flutter/foundation.dart';

abstract class HasLayoutGroup {
  VoidCallback get onLayoutToggle;
}

enum LayoutType {
  home,
  favorite,
  chat,
  help,
}

String layoutName(LayoutType layoutType) {
  switch (layoutType) {
    case LayoutType.home:
      return '首頁';
    case LayoutType.favorite:
      return '我的最愛';
    case LayoutType.chat:
      return '聊天';
    case LayoutType.help:
      return '客服';
    default:
      return '';
  }
}