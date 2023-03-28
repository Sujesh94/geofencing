import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_test/location_data_bloc.dart';
import 'package:test_test/service.dart';
import 'package:test_test/testmappolyline.dart';

void main() {
  runApp( MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:TestMapPolyLine(),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationDataBloc>(
          create: (context) => LocationDataBloc(apiservice: RepositoryProvider.of<ApiService>(context)),
        ),
        // BlocProvider<LoginBloc>(
        //   create: (context) => LoginBloc(ServiceJson()),
        // ),
      ],
      child: RepositoryProvider(
        create: (_) => ApiService(),
        child: MaterialApp(
          theme: ThemeData(
            // primarySwatch: Colors.blue,
            //textTheme: AppTheme.textTheme,
            platform: TargetPlatform.iOS,
          ),
          debugShowCheckedModeBanner: false,
          title: 'MTM',
          home: TestMapPolyLine(),//AppHomeScreen() ,//MyHomePage()
        ),
      ),
    );
    // return MaterialApp(
    //   title: 'Flutter UI',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     // primarySwatch: Colors.blue,
    //     textTheme: AppTheme.textTheme,
    //     platform: TargetPlatform.iOS,
    //   ),
    //   home:AppHomeScreen()           //SplashScreen(),
    // );
  }
}