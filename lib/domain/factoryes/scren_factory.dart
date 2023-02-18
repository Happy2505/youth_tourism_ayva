import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youth_tourism_ayva/auth_screen/login_screen/login_model.dart';

import '../../auth_screen/login_screen/login_widget.dart';
import '../../auth_screen/registration_screen/registration_model.dart';
import '../../auth_screen/registration_screen/registration_widget.dart';
import '../../events_screen/events_model.dart';
import '../../events_screen/events_widget.dart';


class ScreenFactory {
  Widget makeAuth() {
    return ChangeNotifierProvider(
      create: (_) => LoginModel(),
      child: const LoginWidget(),
    );
  }
  Widget makeReg() {
    return ChangeNotifierProvider(
      create: (_) => RegistrationModel(),
      child: RegistrationWidget(),
    );
  }

  Widget makeEvents() {
    return ChangeNotifierProvider(
      create: (_) => EventsModel(),
      child: EventsScreenWidget(),
    );
  }
  // Widget makeLoader() {
  //   return Provider(
  //     create: (context) => LoaderViewModel(context),
  //     lazy: false,
  //     child: const LoaderWidget(),
  //   );
  // }
  //
  // makeProfileLoader() {
  //   return Provider(
  //     create: (context) => LoaderProfileViewModel(context),
  //     lazy: false,
  //     child: const LoaderProfileWidget(),
  //   );
  // }
  //
  // Widget makeMainScreen() {
  //   return const MainScreenWidget();
  // }
  // Widget makeInfoScreen(String title, String url) {
  //   return InfoWidget(title: title, url: url);
  // }
  //
  //

  //
  // Widget makeProductList(String categoryId, String categoryName) {
  //   return ChangeNotifierProvider(
  //     create: (_) => ProductListViewModel(categoryId, categoryName),
  //     child: const ProductListWidget(),
  //   );
  // }
  //
  // Widget makeProductDesc(String categoryId) {
  //   return ChangeNotifierProvider(
  //     create: (_) => ProductDescViewModel(categoryId),
  //     child: const ProductDescWidget(),
  //   );
  // }
  //
  // Widget makeProfile() {
  //   return ChangeNotifierProvider(
  //     create: (_) => ProfileViewModel(),
  //     child: const ProfileWidget(),
  //   );
  // }
  //
  // Widget makeResetPass() {
  //   return ChangeNotifierProvider(
  //     create: (_) => ForgotPassViewModel(),
  //     child: const ForgotPassWidget(),
  //   );
  // }
  //
  // Widget makeCatalogPage() {
  //   return ChangeNotifierProvider(
  //     create: (_) => CatalogViewModel(),
  //     child: const CatalogWidget(),
  //   );
  // }
}
