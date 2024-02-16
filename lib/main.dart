import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
          centerTitle: false,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        body:
           Row(
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.start, children: [
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                     child: SizedBox(
                       width: 70,
                       height: 40,
                       child: TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                          side: const BorderSide( width: 1.0)),
                        child:  const Text("7"),
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 70,
                    height: 40,
                    child: TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                            side: const BorderSide(width: 1.0)),
                        child: const Text("4")
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                  child: SizedBox(
                    width: 70,
                    height: 40,
                    child: TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                          side: const BorderSide(width: 1.0)),
                        child: const Text("1")),
                    //end of first column
                  ),
                )]
        ),
              Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                   child: SizedBox(
                     width: 70,
                     height: 40,
                     child: TextButton(onPressed: (){},
                         style: TextButton.styleFrom(
                           side: const BorderSide(width: 1.0)
                         ),
                         child: const Text("8")
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                   child: SizedBox(
                     width: 70,
                     height: 40,
                     child: TextButton(onPressed: (){},
                         style: TextButton.styleFrom(
                             side: const BorderSide(width: 1.0)
                         ),
                         child: const Text("8")
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                   child: SizedBox(
                     width: 70,
                     height: 40,
                     child: TextButton(onPressed: (){},
                         style: TextButton.styleFrom(
                             side: const BorderSide(width: 1.0)
                         ),
                         child: const Text("8")
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                   child: SizedBox(
                     width: 70,
                     height: 40,
                     child: TextButton(onPressed: (){},
                       style: TextButton.styleFrom(
                         side: const BorderSide(width: 1.0)
                       ),
                         child: const Text("8"),
                     ),
                   ),
                 )

               ],
              ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                       child: SizedBox(
                         width: 70,
                         height: 40,
                         child: TextButton(onPressed: (){},
                             style: TextButton.styleFrom(
                                 side: const BorderSide(width: 1.0)
                      ),
                             child: const Text("8")
                  ),
                ),
              ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                       child: SizedBox(
                         width: 70,
                         height: 40,
                         child: TextButton(onPressed: (){},
                             style: TextButton.styleFrom(
                                 side: const BorderSide(width: 1.0)
                      ),
                             child: const Text("8")
                  ),
                ),
              ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                       child: SizedBox(
                         width: 70,
                         height: 40,
                         child: TextButton(onPressed: (){},
                             style: TextButton.styleFrom(
                                 side: const BorderSide(width: 1.0)
                             ),
                             child: const Text("8")
                         ),
                       ),
                     )
                   ],
                 ),],
           )
      );
  }
}



