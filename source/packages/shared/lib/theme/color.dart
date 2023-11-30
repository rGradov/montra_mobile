part of "theme.dart";

class AppColor  {
  AppColor._();

  static const dark = _Dark();
  static const light = _Light();
  static const violet = _Violet();
  static const red = _Red();
  static const blue = _Blue();
  static const green = _Green();
  static const yellow = _Yellow();
}
////////////////////////////////////////////////////////////////////////////////

class _Dark {
  const _Dark();
   final dark25  = const Color(0xFF7A7E80);
   final dark50  = const Color(0xFF464A4D);
   final dark75  = const Color(0xFF161719);
   final dark100 = const Color(0xFF0D0E0F);
}

////////////////////////////////////////////////////////////////////////////////

class _Light {
  const _Light();
  final light20 = const Color(0xFFE3E5E5);
  final light40 = const Color(0xFFF2F4F5);
  final light60 = const Color(0xFFF7F9FA);
  final light80 = const Color(0xFFFBFBFB);
  final light100 = const Color(0xFFFCFCFC);
}

////////////////////////////////////////////////////////////////////////////////

class _Violet {
  const _Violet();
  final violet20 = const Color(0xFFEEE5FF);
  final violet40 = const Color(0xFFD3BDFF);
  final violet60 = const Color(0xFFB18AFF);
  final violet80 = const Color(0xFF8F57FF);
  final violet100 = const Color(0xFF7F3DFF);
}

////////////////////////////////////////////////////////////////////////////////

class _Red {
  const _Red();
  static const red20 = Color(0xFFFDD5D7);
  static const red40 = Color(0xFFFDA2A9);
  static const red60 = Color(0xFFFD6F7A);
  static const red80 = Color(0xFFFD5662);
  static const red100 = Color(0xFFFD3C4A);
}

////////////////////////////////////////////////////////////////////////////////

class _Green {
  const _Green();
  static const green20 = Color(0xFFCFFAEA);
  static const green40 = Color(0xFF93EACA);
  static const green60 = Color(0xFF65D1AA);
  static const green80 = Color(0xFF2AB784);
  static const green100 = Color(0xFF00A86B);
}

////////////////////////////////////////////////////////////////////////////////

class _Yellow {
  const _Yellow();
  static const yellow20 = Color(0xFFFCEED4);
  static const yellow40 = Color(0xFFFCDDA1);
  static const yellow60 = Color(0xFFFCCC6F);
  static const yellow80 = Color(0xFFFCBB3C);
  static const yellow100 = Color(0xFFFCAC12);
}

////////////////////////////////////////////////////////////////////////////////

class _Blue {
  const _Blue();
  static const blue20 = Color(0xFFBDDCFF);
  static const blue40 = Color(0xFF8AC0FF);
  static const blue60 = Color(0xFF57A5FF);
  static const blue80 = Color(0xFF248AFF);
  static const blue100 = Color(0xFF0077FF);
}

