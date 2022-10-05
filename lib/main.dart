
import 'package:flutter/material.dart';

import 'other/quiz.dart';
import 'other/result.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'I came _____ America?',
      'answers': [
        {'text':'A.from','score':1},
        {'text':'B.At','score':0},
        {'text':'C.in','score':0},
        {'text':'D.one','score':0},
      ],
    },
    {
      'questionText': 'I hope everyone_____ learned something from this',
      'answers': [
        {'text':'A.Have','score':0},
        {'text':'B.Had','score':0},
        {'text':'C.Has','score':1},
        {'text':'Has to','score':0},
      ],
    },
    {
      'questionText': 'ATNHG, DKCMB, CVPJI, GNFPE, EXRLK, JQISH, GZTNM,',
      'answers': [
        {'text':'A.MTLVK','score':1},
        {'text':'B.PQMTH','score':0},
        {'text':'C.RIJTU','score':0},
        {'text':'D.HSKUJ','score':0},
      ],
    },
      {
      'questionText': ' I ____ cold',
      'answers': [
        {'text':'A.am','score':1},
        {'text':'B.have','score':0},
        {'text':'C.had','score':0},
        {'text':'D.is','score':0},
      ],
    },
      {
      'questionText': 'Select the word with correct spelling',
      'answers': [
        {'text':'A.Benefited','score':0},
        {'text':'B.Benifitted','score':0},
        {'text':'C.Benefitted','score':1},
        {'text':'D.Benifited','score':0},
      ],
    },
      {
      'questionText': 'Spot the correct spelling',
      'answers': [
        {'text':'A.Comittee','score':0},
        {'text':'B.Commitee','score':0},
        {'text':'C.Committee','score':1},
        {'text':'D.Committey','score':0},
      ],
    },
      {
      'questionText': 'QPO, NML, KJI, _____, ED',
      'answers': [
        {'text':'A.HGF','score':1},
        {'text':'B.CAB','score':0},
        {'text':'C.JKM','score':0},
        {'text':'D.GHD','score':0},
      ],
    },
      
      {
      'questionText': 'DEF, DEF2, DE2F2, _____, D2E2F3',
      'answers': [
        {'text':'A.DEF3','score':0},
        {'text':'B.D3EF3','score':0},
        {'text':'C.D2E3F','score':0},
        {'text':'D.D2E2F2','score':1},
      ],
    },
      {
      'questionText': 'If you count from 1 to 100, how many 7\'s will you pass on the way?',
      'answers': [
        {'text':'A.10','score':0},
        {'text':'B.11','score':0},
        {'text':'C.19','score':0},
        {'text':'D.20','score':1},
      ],
    },
     {
      'questionText': 'If two typsists can type two pages in two minutes, how many typists will it take to type 18 pages in 6 minutes?',
      'answers': [
        {'text':'A.2','score':0},
        {'text':'B.4','score':0},
        {'text':'C.6','score':1},
        {'text':'D.12','score':0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      //do nothing
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
    
      home: Scaffold(
         
        appBar: AppBar(
          centerTitle: true,
          title: const Text('MH Quiz App',style:TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
          
        
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion,questions: _questions,questionIndex: _questionIndex,)
            : Result(_totalScore, _resetQuiz),
          
             
            
            
            
      ),
        theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
