import 'package:flutter/material.dart';

void main()=>runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  bool _isChecked = false;
  Color _color;
  String _url = "";
  String _text = "";

  void change(bool value){
    setState(() {
     _isChecked = value; 
     if(_isChecked){
       _color = Colors.black;
       _url = "https://cdn.newsapi.com.au/image/v1/a51c74aee4cd29643dcf68ceadf9a8de";
       _text = "Checked";
     }else{
       _color = Colors.grey;
       _url = "https://images.unsplash.com/photo-1555959304-4cfdc80a15d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80";
       _text = " Not Checked";
     }
    });
  }

  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( 
          
          backgroundColor: _color,
          
          title: Text("Checkbox"),
        ),
        body: Column( 
          
         mainAxisAlignment: MainAxisAlignment.center,
         
         children: <Widget>[
      
           Container(
             child: CircleAvatar(
               backgroundImage: NetworkImage(_url),
               
             ),
           ),
         
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              
               Checkbox(
                 value: _isChecked,
                
                 onChanged:change,
               ),
              Text("Are you agree?"),    
             ],
           ),
           Text(_text),
         ],
        ),
      ),
    );
  }
}
  
