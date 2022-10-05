import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restHandler;

  Result(this.resultScore, this.restHandler);

  String get resultPhrase{
    var resultText = 'You did it!';
    if(resultScore < 6){
      resultText = 'Failed! Pass Mark:7 \n';
    }
    
    else{
     resultText = 'Welldone!';
    }
    
    return resultText +'Your Score:'+ '${resultScore}';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restHandler,
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}