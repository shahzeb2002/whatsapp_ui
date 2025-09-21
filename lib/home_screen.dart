//
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   static const String id='home_screen';
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("facebook"),
//           backgroundColor: Colors.blue,
//           actions: [
//             Icon(Icons.search),
//             PopupMenuButton(
//               icon: Icon(Icons.menu),
//                 itemBuilder: (context)=>[
//                   PopupMenuItem(child: Text('Hello')),
//                   PopupMenuItem(child: Text('Hello')),
//                   PopupMenuItem(child: Text('Hello')),
//
//                 ]
//
//             ),
//
//           ],
//           bottom: TabBar(
//               tabs: [
//                 Tab(child: Icon(Icons.home),),
//                 Tab(child: Icon(Icons.ondemand_video_rounded),),
//                 Tab(child: Icon(Icons.notifications_active_outlined),),
//                 Tab(child: Icon(Icons.person),),
//               ]
//           ),
//
//
//         ),
//
//         body: TabBarView(
//
//             children: [
//
//             ListView.builder(
//                     itemCount: 10,
//                     itemBuilder: (context,index){
//                       return ListTile(
//
//                         leading:Container(
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                              border: Border.all(
//                                color: Colors.blue,
//                                width: 3,
//                              ),
//
//                         ),
//                         child:
//
//                         CircleAvatar(
//                         backgroundImage:AssetImage('images/b.JPG'),
//                       )
//                       ) ,
//                         title: Text('Shah Zeb'),
//
//                         trailing: Icon(Icons.cancel),
//                         subtitle: Text('hello'),
//
//                       );
//
//                     }
//                 ),
//
//               Text('This is Reel Section'),
//               Text('This is Notification'),
//
//               Column(
//                 children: [
//
//                 //image
//                   Container(
//                     padding: EdgeInsets.all(5),
//                     margin: EdgeInsets.only(top: 10),
//                     height: 300,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       shape: BoxShape.circle,
//                     ),
//                     child:  CircleAvatar(
//                       backgroundImage: AssetImage('images/a.JPG'),
//
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       TextButton(
//
//
//                           onPressed: (){},
//                           child: Text(
//                               'Edit Profile ',
//                             // style: TextStyle(color: Colors.blue
//                             ),
//
//                           )
//                       )
//                     ],
//                   ),
//                 ],
//               )
//
//             ],
//         ),
//
//       ),
//     );
//
//
//   }
// }


import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id='home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar:AppBar(
              backgroundColor: Colors.teal,
              // centerTitle: true,
              title: Text("Whatsapp", style: TextStyle(color: Colors.white)),
              bottom: TabBar(
                  tabs: [
                    Tab(child: Icon(Icons.camera_alt,color: Colors.white,),),
                    Tab(child: Text('Status',style:  TextStyle(color: Colors.white))),
                    Tab(child: Text('Chats',style:  TextStyle(color: Colors.white))),
                    Tab(child: Text('Calls',style:  TextStyle(color: Colors.white))),
                    // Text('Calls'),
                  ]
              ),
              actions: [
                Icon(Icons.search,color: Colors.white,),
                SizedBox(width: 10,),
                // Icon(Icons.more_horiz_outlined),
                PopupMenuButton(
                  icon: Icon(Icons.more_vert,color: Colors.white,),
                    itemBuilder: (context) =>[
                      PopupMenuItem(
                        value: 1,
                          child:Text('New Groups'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child:Text('New Contact'),
                      ), PopupMenuItem(
                        value: 3,
                        child:Text('Log OUt'),
                      ),
                    ]
                ),

                SizedBox(width: 10,),

              ],

            ),
          body: TabBarView(
              children: [
                Text('Camera'),
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context,index){
                      return ListTile(

                        leading:Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                             border: Border.all(
                               color: Colors.green,
                               width: 3,
                             ),



                        ),
                        child: CircleAvatar(
                        backgroundImage:AssetImage('images/b.JPG'),
                      )
                      ) ,
                        title: Text('Shah Zeb'),
                        subtitle: Text('10 mints ago'),

                      );

                    }
                ),
                ListView.builder(
                  itemCount: 100,
                    itemBuilder: (context,index){
                      return ListTile(
                        leading:CircleAvatar(backgroundImage:AssetImage('images/a.JPG'),) ,
                        title: Text('Shah Zeb'),
                        subtitle: Text('kiaa haal hy'),
                        trailing: Text('06:32 PM'),
                      );

                    }
                  ),
                ListView.builder(
                    itemBuilder: (context,index){
                      return ListTile(

                        leading: CircleAvatar(backgroundImage: AssetImage('images/a.JPG'),),
                        title: Text('Shahzeb'),
                        subtitle: Text(index%3==0?'You missed the call':'Call duration 23:03 '),

                        trailing: Icon(index%3==0?Icons.phone_missed: Icons.video_call),

                      );
                    }
                ),

              ],
          ),


        )
    );
  }
}
