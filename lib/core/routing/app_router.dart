import 'package:clean_architectue/core/routing/routes.dart';
import 'package:clean_architectue/features/home/presentation/views/book_details_view.dart';
import 'package:clean_architectue/features/home/presentation/views/home_view.dart';
import 'package:clean_architectue/features/search/presentation/views/search_view.dart';
import 'package:clean_architectue/features/splach/pesentation/views/splach_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final dynamic arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splachScreen:
        return MaterialPageRoute(builder: (_) => const SplachView());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.bookDetailsView:
        return MaterialPageRoute(builder: (_) => const BookDetailsView());
      case Routes.searchView:
        return MaterialPageRoute(builder: (_) => const SearchView());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No Route Found'))),
        );
    }
  }
}

// class AppRouter {
//   Route? generateRoute(RouteSettings settings) {
//     final dynamic arguments = settings.arguments;
//     switch (settings.name) {
//       case Routes.onBoardingScreen:
//         return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
//       case Routes.photoPageView:
//         return MaterialPageRoute(
//             builder: (_) => PhotoViewPage(
//                   images: arguments,
//                 ));
//       case Routes.loginScreen:
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//                   create: (context) => getIt<LoginCubit>(),
//                   child: const LoginScreen(),
//                 ));
//       case Routes.registerScreen:
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//                   create: (context) => getIt<SignUpCubit>(),
//                   child: const RegisterView(),
//                 ));
//       case Routes.homeScreen:
//         return MaterialPageRoute(
//             builder: (_) => MultiBlocProvider(
//                   providers: [
//                     BlocProvider(
//                       create: (context) => getIt<PostCubit>()..getAllPost(),
//                     ),
//                     BlocProvider(
//                       create: (context) => getIt<OfferCubit>()..getAllOffer(),
//                     ),
//                     BlocProvider(
//                       create: (context) =>
//                           ClientCubit(clientProfileRepo: getIt())..getMe(),
//                     ),
//                   ],
//                   child: const HomeScreen(),
//                 ));
//       //----------- profile ----------------
//       case Routes.profileScreen:
//         return MaterialPageRoute(builder: (_) => const ProfileView());
//       case Routes.personalInfo:
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//                   create: (context) =>
//                       UpdateProfileCubit(updateProfileRepo: getIt()),
//                   child: PersonalInfo(
//                     clientModel: arguments,
//                   ),
//                 ));
//       //----------- fav ----------------
//       case Routes.favScreen:
//         return MaterialPageRoute(builder: (_) => const FavView());
//       //----------- myAppointment ----------------

//       case Routes.myAppointment:
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//                   create: (context) => AppointmentCubit(),
//                   child: MyAppointmentScreen(
//                     index: arguments,
//                   ),
//                 ));
//       //----------- settings ----------------

//       case Routes.settings:
//         return MaterialPageRoute(builder: (_) => const SettingView());
//       //----------- addAppointment ----------------

//       case Routes.addAppointment:
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//                   create: (context) => getIt<AddAppointmentCubit>(),
//                   child: const AddApointement(),
//                 ));
//       //--------------- reschedule ---------------------
//       case Routes.reschedule:
//         return MaterialPageRoute(
//             builder: (_) => RescheduleView(
//                   appointments: arguments,
//                 ));
//       //--------------- my Consultaions ---------------------
//       case Routes.myConsultation:
//         return MaterialPageRoute(builder: (_) => const MyConsultationView());
//       default:
//         return null;
//     }
//   }
// }
