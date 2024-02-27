import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class YesScreen extends StatelessWidget {
  const YesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valentine's Day Celebration",    style: TextStyle(
              color: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.w600,
               fontSize: 20,
                // Adjust the font size as needed
      ),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // This will pop the current screen off the navigation stack
          },
      ),
      ),
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      //Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Title(color: const Color.fromARGB(255, 220, 0, 0),  child: const Text("Congratulations! You've accepted the invitation to be my Valentine.", textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
               fontSize: 20,
                // Adjust the font size as needed
      ),
    ),
    ),
       const SizedBox(height: 0,),
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  width: 250,
                  child: Image.asset( 'assets/images/valentine1.png', ),
                ),
                const SizedBox(height: 20,),
                Title(color: Colors.black, child: const Text("Suggestions for activities or plans:",
                    style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                      ),),
                const ListTile(
                   leading: Icon( Iconsax.heart, size: 24, color: Colors.red,),
                   title: Text("We could enjoy a romantic dinner at your favorite restaurant."),),
                 const ListTile(
                    leading: Icon( Iconsax.heart, size: 24, color: Colors.red,),
                    title: Text("How about a movie night with our favorite films and some cozy blankets?"),),
                  const  ListTile(
                    leading: Icon( Iconsax.heart, size: 24, color: Colors.red,),
                    title: Text("Let's explore the city and make some unforgettable memories together."),),
                   
                   const SizedBox(height: 20,),
       
                 SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){}, 
                        style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.red), ),
                        child: const Text("Explore more ideas and plan!",
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w600,fontSize: 18,),),
                        ),),
              ],
                    ),
          ),
      ),
      ),
    );
  }
}