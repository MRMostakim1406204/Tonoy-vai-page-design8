import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 bool isSelected= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  //SizedBox(width: MediaQuery.of(context).size.width,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 15),
                      child: Container(
                        child: IconButton(
                          highlightColor: Colors.pink,
                          onPressed: (){}, 
                          icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                      ),
                    ),
                Container(
                alignment: Alignment.centerRight,
                height: MediaQuery.of(context).size.height/2.3,
                width: double.infinity,
                color: Color.fromARGB(31, 181, 175, 175),
                child: Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width/2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 110,left: 10),
                      child: Positioned(
                        height: 200,width: 216,
                        child: Image.asset("assets/Mostakim/registation.png")),
                    ), 
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80,left: 40),
                child: Text("Student Information",style: TextStyle(
                        fontSize: 16,color: Colors.black54,fontWeight: FontWeight.w400,fontFamily: 'Roboto',
                      ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100,left: 30),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text("Register Your",style: TextStyle(
                        fontSize: 28,color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'Nunito',
                      ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 132,left: 30),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text("Account",style: TextStyle(
                        fontSize: 28,color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'Nunito',
                      ),),
                ),
              ),
              ],
             ),
             Padding(
               padding: const EdgeInsets.only(top: 100,right: 230),
               child: Text("Full Name ( Student's Name )",style: TextStyle(
                          fontSize: 16,color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'Nunito',
                        ),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 25,top: 10),
               child: TextField(
          decoration: InputDecoration(
            hintText: "Type your name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(top: 30,right: 360),
               child: Text("Student I'd",style: TextStyle(
                          fontSize: 16,color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'Nunito',
                        ),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 25,top: 10),
               child: TextField(
         // obscureText: true,
          decoration: InputDecoration(
            hintText: "Type here",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 30,right: 325),
               child: Text("Creat Password",style: TextStyle(
                          fontSize: 16,color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'Nunito',
                        ),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 25,top: 10),
               child: TextField(
          //obscureText: true,
          decoration: InputDecoration(
            hintText: "Type here",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(top: 30,right: 305),
               child: Text("Confirm Password",style: TextStyle(
                          fontSize: 16,color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'Nunito',
                        ),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 25,top: 10),
               child: TextField(
          //obscureText: true,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.visibility_off)),
            hintText: "********",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 165,top: 10),
               child: Text("Password must be at least 6 character",style: TextStyle(
                fontSize: 16,color: Colors.black54
               ),),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 25,left: 20),
               child: Row(
                 children: [
                   Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)
                    ),
                    value: isSelected, onChanged: (bool?value){
                      setState(() {
                        isSelected =value!;
                      });
                    }),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "I agree to all of"),
                          TextSpan(text: " terms & condition",style: TextStyle(color: Colors.green))
                        ]
                      ),
                    )
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(top: 80,left: 0),
               child: Positioned(
                 child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  minWidth: 252,
                  height: 50,
                  color: Colors.green,
                  onPressed: (){},
                 child: Text("Register Now",style: TextStyle(
                  letterSpacing: 0.4,
                  fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700, 
                 ),),),
               ),
             ),
             
             SizedBox(height: 80,)
            ],
          ),
        ),
   ),
    );
  }
}