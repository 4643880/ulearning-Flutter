import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/app_blocs.dart';
import 'package:ulearning_app/app_events.dart';
import 'package:ulearning_app/app_states.dart';
import 'package:ulearning_app/screens/sign_in/sign_in.dart';
import 'package:ulearning_app/screens/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning_app/screens/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: true,
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(
          lazy: true,
          create: (context) => AppBlocs(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ULearning App',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            useMaterial3: true,
          ),
          // home: WelcomeScreen(),
          routes: {
            "/": (context) => const SignInScreen(),
            "/myHomePage": (context) => const MyHomePage(),
            "/signInScreen": (context) => const SignInScreen(),
          },
        ),
      ),
    );
  }
}

// 2.51.40

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter App With Bloc'),
      ),
      body: Center(
        child: BlocBuilder<AppBlocs, AppState>(
          builder: (context, state) {
            return Text(
              BlocProvider.of<AppBlocs>(context).state.counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: "herotag1",
            onPressed: () {
              BlocProvider.of<AppBlocs>(context).add(Increment());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "herotag2",
            onPressed: () {
              BlocProvider.of<AppBlocs>(context).add(Decrement());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
