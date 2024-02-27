import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:valentine/screens/no.dart';
import 'package:valentine/screens/yes.dart';
import 'package:get/get.dart';

class ValentineScreen extends StatelessWidget {
  const ValentineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valentine with eBarry",  style: TextStyle(
              color: Color.fromARGB(255, 255, 0, 0), fontWeight: FontWeight.w600,
               fontSize: 20,
                // Adjust the font size as needed
      ),),
        ),        
      backgroundColor: Colors.pink.shade100,
      //Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Title(color: Colors.black, child: const Text('Will You Be My Valentine?',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
               fontSize: 28, // Adjust the font size as needed
      ),
    ),
    ),
            const SizedBox(height: 30,),
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  width: 300,
                  child: Image.asset('assets/images/animated-valentines-day-image-0022.gif'),
                ),
                const SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10
                 ),
                 child: Row(
                  children: [
                    
                    Expanded(
                      child: ElevatedButton(
                        onPressed: ()=> Get.to(()=> const YesScreen()), 
                        child: const Text("Yes, I'd love to!", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,
               fontSize: 15,),
               ),
                        ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                      child: ElevatedButton(
                        onPressed: ()=> Get.to(()=> const NoScreen()), 
                        child: const Text("No, thank you.", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w600,
               fontSize: 15,),),
                        ),
                        ),
                  ],
                 ),
               )
              ],
                    ),
          ),
      ),
      ),
    );
  }
}