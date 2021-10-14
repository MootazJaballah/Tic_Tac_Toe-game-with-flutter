import 'package:flutter/material.dart';

const Color winColor = Colors.red;
const Color defColor = Colors.white;

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  String b1 = '';
  String b2 = '';
  String b3 = '';
  String b4 = '';
  String b5 = '';
  String b6 = '';
  String b7 = '';
  String b8 = '';
  String b9 = '';

  int playerX = 0;
  int playerO = 0;

  int inPlay = 1;

  bool gFinish = false;

  void hwoWin() {
    if (b1 == b2 && b1 == b3 && b1.isNotEmpty) {
      if (b1 == 'X') {
        gFinish = true;
        playerX++;
      } else {
        gFinish = true;
        playerO++;
      }
    }
    if (b4 == b5 && b4 == b6 && b4.isNotEmpty) {
      if (b4 == 'X') {
        gFinish = true;
        playerX++;
      } else {
        gFinish = true;
        playerO++;
      }
    }
    if (b7 == b8 && b7 == b9 && b7.isNotEmpty) {
      if (b7 == 'X') {
        gFinish = true;
        playerX++;
      } else {
        gFinish = true;
        playerO++;
      }
    }
    if (b1 == b4 && b1 == b7 && b1.isNotEmpty) {
      if (b1 == 'X') {
        gFinish = true;
        playerX++;
      } else {
        gFinish = true;
        playerO++;
      }
    }
    if (b2 == b5 && b2 == b8 && b2.isNotEmpty) {
      if (b2 == 'X') {
        gFinish = true;
        playerX++;
      } else {
        gFinish = true;
        playerO++;
      }
    }
    if (b3 == b6 && b3 == b9 && b3.isNotEmpty) {
      if (b3 == 'X') {
        gFinish = true;
        playerX++;
      } else {
        gFinish = true;
        playerO++;
      }
    }
    if (b1 == b5 && b1 == b9 && b1.isNotEmpty) {
      if (b1 == 'X') {
        gFinish = true;
        playerX++;
      } else {
        gFinish = true;
        playerO++;
      }
    }
    if (b3 == b5 && b3 == b7 && b3.isNotEmpty) {
      if (b3 == 'X') {
        gFinish = true;
        playerX++;
      } else {
        gFinish = true;
        playerO++;
      }
    }
  }

  void resetGame() {
    setState(() {
      gFinish = false;
      inPlay = 1;
      b1 = '';
      b2 = '';
      b3 = '';
      b4 = '';
      b5 = '';
      b6 = '';
      b7 = '';
      b8 = '';
      b9 = '';
    });
  }

  void resetAllGame() {
    setState(() {
      gFinish = false;
      inPlay = 1;
      playerX = 0;
      playerO = 0;
      b1 = '';
      b2 = '';
      b3 = '';
      b4 = '';
      b5 = '';
      b6 = '';
      b7 = '';
      b8 = '';
      b9 = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text('Player (X) : '),
                  Text('$playerX'),
                ],
              ),
              Row(
                children: [
                  const Text('Player (O) : '),
                  Text('$playerO'),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b1.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b1 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b1 = 'O';
                                        inPlay *= -1;
                                      }
                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b1,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b2.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b2 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b2 = 'O';
                                        inPlay *= -1;
                                      }
                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b2,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b3.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b3 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b3 = 'O';
                                        inPlay *= -1;
                                      }
                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b3,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b4.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b4 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b4 = 'O';
                                        inPlay *= -1;
                                      }
                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b4,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b5.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b5 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b5 = 'O';
                                        inPlay *= -1;
                                      }

                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b5,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b6.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b6 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b6 = 'O';
                                        inPlay *= -1;
                                      }
                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b6,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b7.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b7 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b7 = 'O';
                                        inPlay *= -1;
                                      }
                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b7,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b8.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b8 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b8 = 'O';
                                        inPlay *= -1;
                                      }
                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b8,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (b9.isEmpty && gFinish == false) {
                                      if (inPlay == 1) {
                                        b9 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        b9 = 'O';
                                        inPlay *= -1;
                                      }
                                      hwoWin();
                                    }
                                  });
                                },
                                child: Text(
                                  b9,
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  resetGame();
                },
                onLongPress: () {
                  resetAllGame();
                },
                child: const Text('Restart Game'),
              ),
              const Text(
                  'LongPress in the button to restart the game and the score'),
            ],
          ),
        ),
      ),
    );
  }
}
