import 'package:flutter/material.dart';

class Profile2 extends StatelessWidget {
  const Profile2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      
      appBar: AppBar(
        
        backgroundColor: Colors.black,  
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            print("Back button pressed");
          },
        ),
             
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: screenHeight /3-150,
                width: double.infinity,
                color: Colors.black,
                child: const Center(
                  child: Text("Aqui va la mitad de la foto",style: TextStyle(color: Colors.amber),),
                ),            
              ),

     

            ],
          ),
          Positioned(
            top: screenHeight/3-260,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                image: const DecorationImage(image: AssetImage("assets/raymond.jpg"),
                fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
             
            ),
          ),
          Positioned(
            top: screenHeight /3,
            child: Column(
              children: [
                const Text("Raymond Reddington",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                ),
                const Text("40, Male",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24
                ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.security, color: Colors.black),
                      SizedBox(width: 10),
                      Text("Private security",
                      style: TextStyle(fontSize: 18, color: Colors.black),),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: 300,
                  decoration: BoxDecoration(color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.money_off, color: Colors.black),
                      SizedBox(width: 10),
                      Text("Money laundering",
                      style: TextStyle(
                        fontSize: 18, color: Colors.black
                      ),),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: 300,
                  decoration: BoxDecoration(color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(width: 10),
                      Text("Investigator",
                      style: TextStyle(
                        fontSize: 18, color: Colors.black
                      ),),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: 300,
                  decoration: BoxDecoration(color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.warning, color: Colors.black),
                      SizedBox(width: 10),
                      Text("High-risk individual",
                      style: TextStyle(
                        fontSize: 18, color: Colors.black
                      ),
                      ),
                    ],
                  ),
                ),

              ],
              
            ),
            
            ),
        
        ],
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],

      ),
            
    );
  }
}