import 'package:flutter/material.dart';

class RecipeDetailView extends StatefulWidget {
  final Image recipeImg ;
  final String recipeName;
  final String prepTime;
  const RecipeDetailView({Key key, @required this.recipeImg, @required this.recipeName, @required this.prepTime  }): super(key: key);
  @override
  _RecipeDetailViewState createState() => _RecipeDetailViewState();
}

class _RecipeDetailViewState extends State<RecipeDetailView> {
  var detailRecipee = {"Egg Benedict" : "Assemble the Benedict: Place eight halves of English muffin on a plate and butter them generously. Top each with a slice of Canadian bacon, ham or bacon, then a poached egg. Spoon hollandaise sauce over and sprinkle with chives, dill, flaky sea salt and black pepper." , "Mushroom Risotto": "Step 1  In a saucepan, warm the broth over low heat.   Step 2  Warm 2 tablespoons olive oil in a large saucepan over medium-high heat. Stir in the mushrooms, and cook until soft, about 3 minutes. Remove mushrooms and their liquid, and set aside.Step 3:  Add 1 tablespoon olive oil to skillet, and stir in the shallots. Cook 1 minute. Add rice, stirring to coat with oil, about 2 minutes. When the rice has taken on a pale, golden color, pour in wine, stirring constantly until the wine is fully absorbed. Add 1/2 cup broth to the rice, and stir until the broth is absorbed. Continue adding broth 1/2 cup at a time, stirring continuously, until the liquid is absorbed and the rice is al dente, about 15 to 20 minutes. Step 4  Remove from heat, and stir in mushrooms with their liquid, butter, chives, and parmesan. Season with salt and pepper to taste." , "breakfast" : "Details ", "Hamburger" : "Details ", "Ham and Egg Sandwich" : "Details ", "Creme Brelee" : "Details ", "White Chocolate Donut" : "Details ", "Starbucks Coffee" : "Details ", "Vegetable Curry" : "Details ", "Instant Noodle with Egg" : "Details ",  "Green Tea" : "Details ", "Thai Shrimp Cake" : "Details ", "Angry Birds Cake" : "Details ", "Ham and Cheese Panini" : "Details "};



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Detail View"   ),
      ),
     body: ListView(
       padding: EdgeInsets.all(10),
       children: [

         Card(
           elevation: 5,
           child: Text(widget.recipeName,
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 40,
             fontFamily: "Pacifico",
             color: Colors.pink
           ),),
         ),
         Text("Prep Time : ${widget.prepTime}",
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 17,

           ),),
         Card(child: widget.recipeImg, elevation: 20,),
         Card(
           elevation: 5,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(detailRecipee[widget.recipeName],
               style: TextStyle(

                 fontFamily: 'Source Sans Pro',
                 fontSize: 20,

               ),),
           ),
         ),
       ],
     ),
    );
  }
}
