import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor myColors = const MaterialColor(
    0xffFFFFFF, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffFFFFFF), //10%
      100: const Color(0xffFFFFFF), //20%
      200: const Color(0xffFFFFFF), //30%
      300: const Color(0xffFFFFFF), //40%
      400: const Color(0xffFFFFFF), //50%
      500: const Color(0xffFFFFFF), //60%
      600: const Color(0xffFFFFFF), //70%
      700: const Color(0xffFFFFFF), //80%
      800: const Color(0xffFFFFFF), //90%
      900: const Color(0xffFFFFFF), //100%
    }
  );

  static const MaterialColor backColors =
     MaterialColor(0xffF5F5F5, <int, Color>{
        50:  Color(0xffF5F5F5),
        100: Color(0xffF5F5F5),
        200:  Color(0xffF5F5F5),
        300:  Color(0xffF5F5F5),
        400: Color(0xffF5F5F5),
        500: Color(0xffF5F5F5),
        600: Color(0xffF5F5F5),
        700: Color(0xffF5F5F5),
        800: Color(0xffF5F5F5),
        900: Color(0xffF5F5F5),

      }
      );


      static const MaterialColor mybuttonColors =
      const MaterialColor(0xffC44707, const <int, Color>{
        50: const Color(0xffC44707),
        100: const Color(0xffC44707),
        200: const Color(0xffC44707),
        300: const Color(0xffC44707),
        400: const Color(0xffC44707),
        500: const Color(0xffC44707),
        600: const Color(0xffC44707),
        700: const Color(0xffC44707),
        800: const Color(0xffC44707),
        900: const Color(0xffC44707),

      }
      );


} //color library


