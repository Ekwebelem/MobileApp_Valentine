import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NoScreen extends StatelessWidget {
  const NoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("No Valentine! 600 Years for you.", style: TextStyle(
              color: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.w600,
               fontSize: 20,
      ),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
      ),
      ),
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Title(color: const Color.fromARGB(255, 220, 0, 0),  child: const Text("No worries if you've chosen not to be my Valentine this time.", textAlign: TextAlign.center,
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
                  child: Image.asset( 'assets/images/valentines-day-icegif-23.gif', ),
                ),
                const SizedBox(height: 20,),
                Title(color: Colors.black, child: const Text("Suggestions for solo or alternative activities:", textAlign: TextAlign.center,
                    style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                      ),),
                const ListTile(
                   leading: Icon( Iconsax.heart, size: 24, color: Colors.red,),
                   title: Text("Treat yourself to a spa day or a relaxing bubble bath at home."),),
                 const ListTile(
                    leading: Icon( Iconsax.heart, size: 24, color: Colors.red,),
                    title: Text("Host a 'Galentine's' or 'Palentine's' gathering with friends for a fun night in."),),
                  const  ListTile(
                    leading: Icon( Iconsax.heart, size: 24, color: Colors.red,),
                    title: Text("Take this opportunity to focus on self-love and personal growth."),),
                   
                   const SizedBox(height: 20,),
       
                 SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){}, 
                        style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.red), ),
                        child: const Text("Invitation for future events!",
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