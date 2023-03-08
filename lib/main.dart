import 'package:flutter/material.dart';
import 'package:fooddy/screens/about_screen.dart';
import 'package:fooddy/screens/change_address_screen.dart';
import 'package:fooddy/screens/checkout_screen.dart';
import 'package:fooddy/screens/desert_screen.dart';
import 'package:fooddy/screens/forget_pw_screen.dart';
import 'package:fooddy/screens/home_screen.dart';
import 'package:fooddy/screens/inbox_screen.dart';
import 'package:fooddy/screens/individual_item.dart';
import 'package:fooddy/screens/intro_screen.dart';
import 'package:fooddy/screens/landing_screen.dart';
import 'package:fooddy/screens/login_screen.dart';
import 'package:fooddy/screens/menu_screen.dart';
import 'package:fooddy/screens/more_screen.dart';
import 'package:fooddy/screens/my_order_screen.dart';
import 'package:fooddy/screens/new_pw_screen.dart';
import 'package:fooddy/screens/notification_screen.dart';
import 'package:fooddy/screens/offer_screen.dart';
import 'package:fooddy/screens/payment_screen.dart';
import 'package:fooddy/screens/profile_screen.dart';
import 'package:fooddy/screens/send_otp_screen.dart';
import 'package:fooddy/screens/sign_up_screen.dart';
import 'package:fooddy/screens/splash_screen.dart';
import 'const/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPwScreen.routeName: (context) => ForgetPwScreen(),
        SendOTPScreen.routeName: (context) => SendOTPScreen(),
        NewPWScreen.routeName: (context) => NewPWScreen(),
        IntroScreen.routeName: (context) => IntroScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        MenuScreen.routeName: (context) => MenuScreen(),
        OfferScreen.routeName: (context) => OfferScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        MoreScreen.routeName: (context) => MoreScreen(),
        DessertScreen.routeName: (context) => DessertScreen(),
        IndividualItem.routeName: (context) => IndividualItem(),
        PaymentScreen.routeName: (context) => PaymentScreen(),
        NotificationScreen.routeName: (context) => NotificationScreen(),
        AboutScreen.routeName: (context) => AboutScreen(),
        InboxScreen.routeName: (context) => InboxScreen(),
        MyOrderScreen.routeName: (context) => MyOrderScreen(),
        CheckoutScreen.routeName: (context) => CheckoutScreen(),
        ChangeAddressScreen.routeName: (context) => ChangeAddressScreen(),
      },
    );
  }
}