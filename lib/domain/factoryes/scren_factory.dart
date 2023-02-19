import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youth_tourism_ayva/auth_screen/login_screen/login_model.dart';
import 'package:youth_tourism_ayva/home_screen/home_model.dart';

import '../../auth_screen/login_screen/login_widget.dart';
import '../../auth_screen/registration_screen/registration_model.dart';
import '../../auth_screen/registration_screen/registration_widget.dart';
import '../../events_screen/desc_event_screen/desc_event_model.dart';
import '../../events_screen/desc_event_screen/desc_event_widget.dart';
import '../../events_screen/events_model.dart';
import '../../events_screen/events_widget.dart';
import '../../events_screen/organization_event_screen/organization_event_model.dart';
import '../../events_screen/organization_event_screen/organization_event_widget.dart';
import '../../home_screen/desc_news_screen/desc_news_model.dart';
import '../../home_screen/desc_news_screen/desc_news_widget.dart';
import '../../home_screen/home_widget.dart';
import '../../profile_screen/profile_model.dart';
import '../../profile_screen/profile_widget.dart';
import '../../residence_screen/residence_model.dart';
import '../../residence_screen/residence_widget.dart';


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

  Widget makeEventID(int ID) {
    return ChangeNotifierProvider(
      create: (_) => EventIDModel(ID),
      child: DescEventScreenWidget(),
    );
  }

  Widget makeScienceID(int ID) {
    return ChangeNotifierProvider(
      create: (_) => ScienceIDModel(ID),
      child: OrganizationEventWidget(),
    );
  }

  Widget makeHome() {
    return ChangeNotifierProvider(
      create: (_) => HomeModel(),
      child: HomeWidget(),
    );
  }
  Widget makeNewsID(int ID) {
    return ChangeNotifierProvider(
      create: (_) => NewsIDModel(ID),
      child: DescNewsWidget(),
    );
  }

  Widget makeResidence() {
    return ChangeNotifierProvider(
      create: (_) => ResidenceModel(),
      child: ResidentsWidget(),
    );
  }

  Widget makeProfile() {
    return ChangeNotifierProvider(
      create: (_) => ProfileModel(),
      child: ProfileWidget(),
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
