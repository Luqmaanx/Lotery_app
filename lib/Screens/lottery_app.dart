import 'package:flutter/material.dart';
import 'dart:math';

class LotteryApp extends StatefulWidget {
  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Lottery App',
            style: TextStyle(fontSize: 24, fontFamily: 'Pacifico'),
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: const Placeholder(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Lottery Winning Number Is 6',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Noto',
                color: Colors.teal,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 230,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: x == 6
                  ? Colors.pinkAccent.withOpacity(.2)
                  : Colors.grey.withOpacity(.3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: x == 6
                  ? Column(
                      children: [
                        const Icon(
                          Icons.done_all,
                          size: 40,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Congratulation You Won The Lottery & Your Lucky Number Is $x ',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'Noto',
                            color: Colors.green,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 40,
                          color: Colors.redAccent,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Better Luck Next Time Your Number Is $x \n Try Again',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'Noto',
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(15);
          setState(() {});
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
