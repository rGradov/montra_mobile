part of "theme.dart";



class AppText {
   AppText._();

  final title = _Title();
  final regular = _Regular();
  final tiny = _Tiny();
  final small = _Small();

}

////////////////////////////////////////////////////////////////////////////////

class _Title {
   _Title();

   final titleX =  TextStyle(
    fontFamily: "Inter",
    fontSize: 64,
    fontWeight: FontWeight.bold,
    package:"shared",
    height: 80,
    color: AppColor.dark.dark75,
  );
   final title1 = TextStyle(
      fontFamily: "Inter",
      fontSize: 32,
      fontWeight: FontWeight.bold,
      package:"shared",
      height: 34,
      color: AppColor.dark.dark75,
  );
   final title2 = TextStyle(
      fontFamily: "Inter",
      fontSize: 24,
      fontWeight: FontWeight.w400,
      package:"shared",
      height: 22,
     color: AppColor.dark.dark75,
  );
   final title3 = TextStyle(
      fontFamily: "Inter",
      fontSize: 18,
      fontWeight: FontWeight.w400,
      package:"shared",
      height: 22,
      color: AppColor.dark.dark75,
  );
}

////////////////////////////////////////////////////////////////////////////////

class _Regular {
   _Regular();

   final regular1 = TextStyle(
      fontFamily: "Inter",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      package:"shared",
      height: 19,
      color: AppColor.dark.dark75,

  );
   final regular2 = TextStyle(
      fontFamily: "Inter",
      fontSize: 24,
      fontWeight: FontWeight.w600,
      package:"shared",
      height: 22,
    color: AppColor.dark.dark75,
  );
   final regular3 = TextStyle(
      fontFamily: "Inter",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      package:"shared",
      height: 18,
      color: AppColor.dark.dark75,
  );
}

////////////////////////////////////////////////////////////////////////////////

class _Small {
   _Small();

  final small = TextStyle(
    fontFamily: "Inter",
    fontSize: 13,
    fontWeight: FontWeight.w500,
    package:"shared",
    height: 16,
    color: AppColor.dark.dark75,
  );
}

////////////////////////////////////////////////////////////////////////////////

class _Tiny {
   _Tiny();

  final tiny = TextStyle(
    fontFamily: "Inter",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    package:"shared",
    height: 12,
    color: AppColor.dark.dark75,
  );
}