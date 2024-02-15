import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learning app"),
        ),
        body:
           Row(
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 crossAxisAlignment: CrossAxisAlignment.start, children: [
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                     child: SizedBox(
                       width: 70,
                       height: 40,
                       child: TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                          side: const BorderSide( width: 1.0 )),
                        child:  const Text("7")
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
                  ),
                )]
        ),
              Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(50.0,8.0,8.0,8.0),
                   child: SizedBox(
                     width: 70,
                     height: 40,
                     child: TextButton(onPressed: (){},
                         style: TextButton.styleFrom(
                           side: const BorderSide(width: 1.0)
                         ),
                         child: Text("8")
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(50.0,8.0,8.0,8.0),
                   child: SizedBox(
                     width: 70,
                     height: 40,
                     child: TextButton(onPressed: (){},
                         style: TextButton.styleFrom(
                             side: const BorderSide(width: 1.0)
                         ),
                         child: Text("8")
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(50.0,8.0,8.0,8.0),
                   child: SizedBox(
                     width: 70,
                     height: 40,
                     child: TextButton(onPressed: (){},
                         style: TextButton.styleFrom(
                             side: const BorderSide(width: 1.0)
                         ),
                         child: Text("8")
                     ),
                   ),
                 )

               ],
              ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(50.0,8.0,8.0,8.0),
                       child: SizedBox(
                         width: 70,
                         height: 40,
                         child: TextButton(onPressed: (){},
                             style: TextButton.styleFrom(
                                 side: const BorderSide(width: 1.0)
                      ),
                             child: Text("8")
                  ),
                ),
              ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(50.0,8.0,8.0,8.0),
                       child: SizedBox(
                         width: 70,
                         height: 40,
                         child: TextButton(onPressed: (){},
                             style: TextButton.styleFrom(
                                 side: const BorderSide(width: 1.0)
                      ),
                             child: Text("8")
                  ),
                ),
              ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(50.0,8.0,8.0,8.0),
                       child: SizedBox(
                         width: 70,
                         height: 40,
                         child: TextButton(onPressed: (){},
                             style: TextButton.styleFrom(
                                 side: const BorderSide(width: 1.0)
                      ),
                             child: Text("8")
                  ),
                ),
              )

            ],








                 ),],







             )






           ),


      );
  }
}
