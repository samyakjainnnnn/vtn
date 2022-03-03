import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vtn/screens/front/two.dart';
import 'package:vtn/screens/front/three.dart';
import 'package:vtn/screens/front/one.dart';
import 'package:vtn/screentwo/mapping.dart';
import 'package:get/get.dart';

import '../welcome/welcome_screen.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key, userMail}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  //list view mein dali h recepies
  bool _isLoading = true;
   //bool loading krke api laaunching
  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
       appBar: AppBar(
          //app bar first thing in scaffold in front screen
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(width: 10), Text('Food Recipe'),
            ],
          ),
        ),
        
     
        
//main body chalu kri h , direct api integrate wala system h
        body:
        
         _isLoading
        
            ? const Center(child: CircularProgressIndicator())
            
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {

                  return RecipeCard(
                    
                      title: _recipes[index].name,
                      cookTime: _recipes[index].totalTime,
                      rating: _recipes[index].rating.toString(),
                      thumbnailUrl: _recipes[index].images);
                },
              ),
              
              //drawer  lgaya h yhan pr
               drawer: Drawer(
                 
              child: ListView(
                
          //   padding Remove kri h agr h toh koi from the ListView.
          padding: EdgeInsets.zero,
          children: [

            const DrawerHeader(
          child: null,
          //header set 
              decoration: BoxDecoration(
            image: DecorationImage(
                  image: AssetImage("assets/icons/vtn.jpeg"),
                     ),
                color: Color.fromARGB(255, 173, 173, 173),


              ), 

              //vtn image
            ),
            ListTile(
              title: const Text('Team members'),
              onTap: () {
              Get.to(() =>WelcomeScreen());
// yha pr team  wala item dala h
                // ...
                // Then close the drawer
              },
            ),
            
            ListTile(
              title: const Text('Maps'),
              onTap: () {
               Get.to(MapSample());

                // yha pr mapping wala item dala h
                // ...
                // Then close the drawer
              },
            ),
            ListTile(
              title: const Text('food order online'),
              onTap: () {
// yha pr team  wala item dala h
                // ...
                // Then close the drawer
              },
            ),
            Divider(),
            ListTile(
              title: const Text('About'),
              onTap: () {

                // yha pr mapping wala item dala h
                // ...
                // Then close the drawer
              },
            ),
          ],
              )));
  }
}
