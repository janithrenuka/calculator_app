import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State createState() => new HomePageState();

}

class HomePageState extends State<HomePage>{

  var num1 = 0 ,num2 = 0,sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void addition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtution(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiply(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void divide(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2; 
    });
  }

  void clear(){
    setState(() {
        num1 = 0;
        num2 = 0;
        t1.text = "0";
        t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("Calculator"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(50.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          
              new Text(
                "Output : $sum",
                style: new TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold , 
                  color: Colors.lightGreen
                ),
              ),
              //fisrt input field
              new TextField(
                //textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter Number 1"
                ),
                controller: t1,
              ),
              
              //second input field
              new TextField(
                //textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter Number 2" 
                ),
                controller: t2,
              ),
              
              new Padding(
                padding: const EdgeInsets.only(top: 20.0)
              ),
              
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                    // ignore: deprecated_member_use
                    new MaterialButton(
                      child: new Text("+", style: TextStyle(fontSize: 25)),
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      onPressed: addition,
                    ),

                    // ignore: deprecated_member_use
                    new MaterialButton(
                      child: new Text("-", style: TextStyle(fontSize: 25)),
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      onPressed: subtution,
                    ),

                ],
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                    // ignore: deprecated_member_use
                    new MaterialButton(
                      child: new Text("*", style: TextStyle(fontSize: 25)),
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      onPressed: multiply,
                    ),

                    // ignore: deprecated_member_use
                    new MaterialButton(
                      child: new Text("/", style: TextStyle(fontSize: 25)),
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      onPressed: divide,
                    )

                ],
              ),
              
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Clear", style: TextStyle(fontSize: 20)),
                    color: Colors.red, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: clear,
                  )
                ],
              )

            ]
          ),
        ),
    );
  }
}