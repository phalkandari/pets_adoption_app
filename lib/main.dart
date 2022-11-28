import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_adoption_app/pages/add_pet_page.dart';
import 'package:pets_adoption_app/pages/pet_list_page.dart';
import 'package:pets_adoption_app/providers/pet_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => PetListPage(),
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) => AddPetPage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PetProvider(),
        )
      ],
      child: MaterialApp.router(
        title: 'Pets Adoption App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: router,
      ),
    );
  }
}
