import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  
Future<void> _launchInBrowser(String url) async {
 if(await canLaunch(url)){
   await launch(
     url,
   );
 }
}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
  return Scaffold(
    backgroundColor: Colors.grey ,
    body:Padding( 
      padding: EdgeInsets.only(top: 40.0),
      child: Container(
        child: Center(
          child:Column(
            children: [
              Text(
                'Link Tree',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic 
                ),
              ),

            Container(
              height: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.redAccent
              ),
            ),
           SizedBox(height:20.0,),

           Container(
             width: size.width*0.8,
             height: size.height*0.08,
             child: Card(
               elevation: 5.0,
               child: Center(child: Text('GitHub', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),) ),
             ),
           ),
            SizedBox(height:20.0,),
            Container(
             width: size.width*0.8,
             height: size.height*0.08,
             child: Card(
               elevation: 5.0,
               child: Center(child: Text('YouTube', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),) ),
             ),
           ),
            SizedBox(height:20.0,),
            Container(
             width: size.width*0.8,
             height: size.height*0.08,
             child: Card(
               elevation: 5.0,
               child: Center(child: Text('Instagram', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),) ),
             ),
           ),
            SizedBox(height:20.0,),
            Container(
             width: size.width*0.8,
             height: size.height*0.08,
             child: Card(
               elevation: 5.0,
               child: Center(child: Text('FaceBook', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),) ),
             ),
           ),
            SizedBox(height:20.0,),

              LinkCard(label: "YouTube", url: "url", onTap:()  {
                print('Url Launched');
                  _launchInBrowser('https://google.com');
              },),
              
             

            ],
          ),
        ),
      ),
    )
  );
  }
}

class LinkCard extends StatelessWidget {
  final String label;
  final String url; 
  final Function onTap;
  const LinkCard({ Key? key, required this.label, required this.url, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  GestureDetector(
      onTap: onTap(),
      child:Container( 
             width: size.width*0.8,
             height: size.height*0.08,
             child: Card(
               elevation: 5.0,
               child: Center(child: Text(
                 label,
                  style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
                    )),
             ),
             ),
           );
        
  }
}