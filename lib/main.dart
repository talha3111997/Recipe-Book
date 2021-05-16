import 'package:flutter/material.dart';
import 'screens/recipe_detail_view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Book',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: RecipeView(),
    );
  }
}

class RecipeView extends StatefulWidget {
  @override
  _RecipeViewState createState() => _RecipeViewState();
}
q
class _RecipeViewState extends State<RecipeView> {
  var  prepTime = ["10 min", "20 min","25 min", "30 min", "40 min","1 hour", "40 min", "50 min", "40 min","1 hour", "40 min", "50 min", "40 min","1 hour", "40 min", "50 min"];
  var  recipeNames = ["Egg Benedict", "Mushroom Risotto", "Breakfast", "Hamburger", "Ham and Egg Sandwich", "Creme Brelee", "White Chocolate Donut", "Starbucks Coffee", "Vegetable Curry", "Instant Noodle with Egg",  "Green Tea", "Thai Shrimp Cake", "Angry Birds Cake", "Ham and Cheese Panini"];
  var  recipeImages = ["egg_benedict.jpg", "mushroom.jpg", "breakfast.jpg", "hamburger.jpg",    "ham_and_egg_sandwich.jpg", "creme_brelee.jpg", "white_chocolate_donut.jpg", "starbucks_coffee.jpg", "vegetable_curry.jpeg", "instant_noodle_with_egg.jpg",  "green_tea.jpg", "thai_shrimp_cake.jpg", "angry_birds_cake.jpg", "ham_and_cheese_panini.jpg"];

  recipes(){
    return ListView(
      children: <Widget>[
        for(int i = 0 ; i < recipeNames.length; i++) Card(
          elevation: 3,
          child: ListTile(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipeDetailView(recipeName: recipeNames[i], prepTime: prepTime[i], recipeImg: Image.asset("images/${recipeImages[i]}")))),
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/${recipeImages[i]}"),
              radius: 30,
            ),
            title: Text(recipeNames[i],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,

            ),
            ),
            subtitle: Text(prepTime[i],
              style: TextStyle(
                fontSize: 16,

              ),),
          ),
        )

      ],
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: Text("Recipe Book"),),

        body: recipes()

    );
  }
}
