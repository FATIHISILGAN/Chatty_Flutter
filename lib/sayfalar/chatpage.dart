import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List mesajlar = ["Naber ?"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        leading: CircleAvatar(
           backgroundImage: NetworkImage("https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png"),
        ),
        title: Text("İsim"),
        elevation: 25,
        gradient: LinearGradient(
          colors: [Color(0xffeee8aa), Color(0xff79cdcd)],
          begin: FractionalOffset(1,0.2),
        ),
      ),
      body: Container(
        child:  ListView.builder(itemCount: mesajlar.length,itemBuilder: (context, index) {
            return Column(
              children: <Widget>[

                ListTile(

                  title: Text(mesajlar[index],style: TextStyle(fontSize: 25),),
                  subtitle: Text("22:31",style: TextStyle(fontSize: 10),),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left:300),
                    child: ListTile(

                      title: Text(mesajlar[index],style: TextStyle(fontSize: 25),),
                      subtitle: Text("22:31",style: TextStyle(fontSize: 10),),
                    ),
                  ),
                ),

              ],
            );
          },
        ),

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffeee8aa), Color(0xff79cdcd)],
            begin: FractionalOffset(0.3, 1),
          ),
        ),
      ),

    );
  }
}
