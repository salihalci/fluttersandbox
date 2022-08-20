import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());


}


class MyApp extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    
    return new MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion(){
    setState(() {
      questionIndex++;
    });
    
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("1"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("2"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("3"),
          ),
        ]),
      ),
    );
  }
}
