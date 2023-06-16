import 'package:booklyapp/Features/Splash/presentation/views/splash_view.dart';
import 'package:booklyapp/Features/home/presentation/views/book_details.dart';
import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = "/HomeView";
  static const kBookDetailsView = "/BookDetailsView";
  static const kSearchView="/SearchView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
