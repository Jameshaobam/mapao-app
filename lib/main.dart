import 'package:flutter/material.dart';
import 'package:fquery/fquery.dart';
import 'package:get/get.dart';
import 'package:mapao_app/screens/detail_discover.dart';
import 'package:mapao_app/screens/login.dart';
import 'package:mapao_app/screens/mainscreen.dart';
import 'package:mapao_app/screens/splash.dart';
import 'package:get_storage/get_storage.dart';

import './screens/discover.dart';
import './screens/discover_category.dart';

Future<void> initializeStorage() async {
  await GetStorage.init("auth");
}

void main() async {
  await initializeStorage();
  var queryClient = QueryClient();
  runApp(
    QueryClientProvider(
      queryClient: queryClient,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static String APP_NAME = "MAPAO";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      getPages: [
        GetPage(
          name: SplashScreen.routeName,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: LoginPage.routeName,
          page: () => LoginPage(),
        ),
        GetPage(
          name: MainPage.routeName,
          page: () => MainPage(),
        ),
        GetPage(
          name: DiscoverCategoryPage.routeName,
          page: () => DiscoverCategoryPage(),
        ),
        GetPage(
          name: DiscoverPage.routeName,
          page: () => DiscoverPage(title: APP_NAME),
        ),
        GetPage(
          name: DetailDiscoverPage.routeName,
          page: () => DetailDiscoverPage(),
        ),
      ],
    );
  }
}
