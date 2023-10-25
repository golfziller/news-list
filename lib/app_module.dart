// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:list_news/data/network/api_service.dart';

// class MainModule extends Module {
//   final NetworkService _apiClient;

//   MainModule(
//     this._apiClient,
//   );

//   @override
//   List<Module> get imports => [];

//   @override
//   List<Bind> get binds {
//     final listt = [
//       Bind.singleton<UserSession>((i) => _userSession),
//       Bind.singleton<UserRepository>((i) => UserRepository(_apiClient)),
//       Bind.singleton<AuthenticationRepository>(
//           (i) => AuthenticationRepository(_apiClient)),
//       Bind.singleton<PassRepository>((i) => PassRepository(_apiClient)),
//       Bind.singleton<PerkRepository>((i) => PerkRepository(_apiClient)),
//       Bind.singleton<VoucherRepository>((i) => VoucherRepository(_apiClient)),
//       Bind.singleton<ReservationRepository>(
//           (i) => ReservationRepository(_apiClient)),
//       Bind.singleton<PaymentRepository>((i) => PaymentRepository(_apiClient)),
//       Bind.singleton<InfoPassRepository>((i) => InfoPassRepository(_apiClient)),
//       Bind.singleton<NotificationRepository>(
//           (i) => NotificationRepository(_apiClient)),
//       Bind.singleton<AuthenticationBloc>((i) => AuthenticationBloc(
//             _userSession.valid
//                 ? AuthenticationStatus.authenticated
//                 : AuthenticationStatus.unauthenticated,
//           )),
//       Bind.singleton<LocaleBloc>((i) => LocaleBloc()),
//       Bind.singleton<PassCubit>((i) => PassCubit()),
//       Bind.singleton<PerkCubit>((i) => PerkCubit()),
//       Bind.singleton<ReservationCubit>((i) => ReservationCubit()),
//       Bind.singleton<NotificationCubit>((i) => NotificationCubit()),
//       Bind.singleton<InfoCubit>((i) => InfoCubit()),
//       Bind.singleton<TrackEvent>((i) => TrackEvent([])),
//       Bind.singleton<InfoRepository>((i) => InfoRepository(_apiClient)),
//     ];
//     print(_userSession.accessToken);
//     return listt;
//   }

//   @override
//   List<ModularRoute> get routes => [
//         ChildRoute(
//           '/',
//           child: (context, args) => MultiBlocProvider(
//             providers: [
//               BlocProvider<MainBloc>(
//                 create: (context) => MainBloc(),
//               ),
//               BlocProvider(create: (context) => Modular.get<PassCubit>()),
//               BlocProvider(create: (context) => Modular.get<PerkCubit>()),
//             ],
//             child: const MainScreen(),
//           ),
//         ),
//         ModuleRoute(
//           authentication.AppModule.baseRoute,
//           module: authentication.AppModule(
//             '/',
//             _secureStorage,
//           ),
//         ),
//         ModuleRoute(
//           modular.AppModule.baseRoute,
//           module: modular.AppModule(_apiClient),
//           guards: [
//             AuthGuard(),
//           ],
//         ),
//       ];
// }

// // class AuthGuard extends RouteGuard {
// //   AuthGuard() : super(redirectTo: '/authentications/login');

// //   @override
// //   Future<bool> canActivate(String path, ModularRoute route) async {
// //     return Modular.get<AuthenticationBloc>().state.status ==
// //         AuthenticationStatus.authenticated;
// //   }
// // }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/cubits/news/news_cubit.dart';
import 'package:list_news/data/network/api_service.dart';
import 'package:list_news/repository/news_repo.dart';
import 'package:list_news/routes/page_name.dart';
import 'package:list_news/views/news/detail_screen.dart';
import 'package:list_news/views/news/list_screen.dart';

class AppModule extends Module {
  AppModule();

  @override
  void binds(i) {
    i.addSingleton(NetworkService.new);
    i.addLazySingleton(NewsRepository.new);

    i.add(NewsCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      PageName.newsList,
      child: (context) => BlocProvider(
        create: (context) => Modular.get<NewsCubit>(),
        child: NewsListScreen(),
      ),
    );
    r.child(
      PageName.newsDetail,
      child: (context) => NewsDetailScreen(),
    );
  }
}
