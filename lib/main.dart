import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   TextEditingController controller1 = TextEditingController();
   TextEditingController controller2 = TextEditingController();
   int? result=0, num1=0,num2=0;
   add(){
     setState(() {
       num1= int.parse(controller1.text);
       num2= int.parse(controller2.text);
       result= num1! + num2!;

     });
   }
   sub(){
     setState(() {
       num1= int.parse(controller1.text);
       num2= int.parse(controller2.text);
       result= num1! - num2!;

     });
   }
   div(){
     setState(() {
       num1= int.parse(controller1.text);
       num2= int.parse(controller2.text);
       result= num1! ~/ num2!;

     });
   }
   mul(){
     setState(() {
       num1= int.parse(controller1.text);
       num2= int.parse(controller2.text);
       result= num1! * num2!;

     });
   }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.amber[50],
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            color: Colors.blue,
                            width: 5
                        )
                    ),
                    child: new TextField(
                      controller: controller1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'fontMain',
                        color: Colors.blue,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                  ),
                ),
              ),
              new Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.amber[50],
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            color: Colors.blue,
                            width: 5
                        )
                    ),
                    child: new TextField(
                      controller: controller2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'fontMain',
                        color: Colors.blue,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),


          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                    color: Colors.blue,
                    width: 5
                )
            ),
            child: Center(
              child: Text('=  $result',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'fontMain',
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(onPressed: (){
                add();
                controller1.clear();
                controller2.clear();
              }, child: Text("Add")),
              ElevatedButton(onPressed: (){
                sub();
                controller1.clear();
                controller2.clear();
              }, child: Text("Sub"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                mul();
                controller1.clear();
                controller2.clear();
              }, child: Text("Mul")),
              ElevatedButton(onPressed: (){
                div();
                controller1.clear();
                controller2.clear();
              }, child: Text("Div"))
            ],
          )
        ],
      ),
    )

    );
  }
}
