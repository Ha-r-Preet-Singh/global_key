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
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:formKey ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(

              decoration: InputDecoration(
                label: Text("Email"),
                  hintText: "Enter email here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                )
              ),
              validator: (value){
                if(value==""||!value!.contains("@")){
                  return "Please enter valid email!! ";
                }

                return null;

              },
            ),
            SizedBox(height: 20,),
            TextFormField(

              decoration: InputDecoration(
                  label: Text("Password"),
                  hintText: "Enter password here..",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  )
              ),
              validator: (value){

                if(value==""||value!.length<5){
                  return "Please enter valid password(Length must be atleast 6 characters)!! ";
                }

                return null;

              },
            ),


            SizedBox(height: 20,),


            ElevatedButton(onPressed: (){
              if(formKey.currentState!.validate()){
                print("Loogged In");
              }else{
                Container();
              }
            }, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}

























//making counter app using Global key



//
//
// class HomePage extends StatelessWidget {
//   var counterKey  = GlobalKey<_CounterWidgetState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//
//       body: CounterWidget(key: counterKey,),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           FloatingActionButton(
//             onPressed: (){
//               if(counterKey.currentState!=null){
//                 counterKey.currentState!.incrementCounter();
//               }
//             },
//             child: Icon(Icons.add),
//           ),
//           FloatingActionButton(
//             onPressed: (){
//               if(counterKey.currentState!=null){
//                 counterKey.currentState!.decrementCounter();
//               }
//             },
//             child: Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class CounterWidget extends StatefulWidget {
//   const CounterWidget({super.key});
//
//   @override
//   State<CounterWidget> createState() => _CounterWidgetState();
// }
//
// class _CounterWidgetState extends State<CounterWidget> {
//   int counter = 0 ;
//
//   void incrementCounter(){
//     counter++;
//     setState(() {
//
//     });
//
//
//
//
//
//   }
//   void decrementCounter(){
//     if(counter>=1){
//       counter--;
//       setState(() {
//
//       });
//
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("$counter",style: TextStyle(fontSize: 43),),
//     );
//   }
// }
//

