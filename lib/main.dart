import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_sreen.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ))),
      //home: CategoriesScreen(),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
      // PRIMEIRA CHAMADA CASO NÃO ENCONTE AS ROTAS NOMEADAS
      //chamada caso não encontre as rotas nomeadas
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/auguma-coisa') {
      //     return null;
      //   }
      // },
      // SEGUNDA CHAMADA EM ROTAS DESCONHECIDAS
      //chamada caso rota desconhecida similar ao 404
      // onUnknownRoute: (settings) {
      //   if (settings.name == '/auguma-coisa') {
      //     return null;
      //   }
      // },
    );
  }
}
