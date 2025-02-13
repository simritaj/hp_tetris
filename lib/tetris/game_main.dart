import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'score_bar.dart';
import 'game.dart';
import 'next_block.dart';
import 'block.dart';


class Tetris extends StatefulWidget {
  Tetris({this.seed});
  int seed;
  @override
  State<StatefulWidget> createState() => _TetrisState();
}

class _TetrisState extends State<Tetris> {
  GlobalKey<GameState> _keyGame = GlobalKey();
  //var number1 = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TETRIS'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ScoreBar(),
            Expanded(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                        child: Game(key: _keyGame, seed:widget.seed),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            NextBlock(),
                            SizedBox(
                              height: 30,
                            ),
                            RaisedButton(
                              child: Text(
                                Provider.of<Data>(context, listen: false).isPlaying
                                    ? 'End'
                                    : 'Start',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[200],
                                ),
                              ),
                              color: Colors.indigo[700],
                              onPressed: () {
                                Provider.of<Data>(context, listen: false).isPlaying
                                    ? _keyGame.currentState.endGame()
                                    : _keyGame.currentState.startGame();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Data with ChangeNotifier {
  int score = 0;
  bool isPlaying = false;
  Block nextBlock;

  void setScore(score) {
    this.score = score;
    notifyListeners();
  }

  void addScore(score) {
    this.score += score;
    notifyListeners();
  }

  void setIsPlaying(isPlaying) {
    this.isPlaying = isPlaying;
    notifyListeners();
  }

  void setNextBlock(Block nextBlock) {
    this.nextBlock = nextBlock;
    notifyListeners();
  }

  Widget getNextBlockWidget() {
    if (!isPlaying) return Container();

    var width = nextBlock.width;
    var height = nextBlock.height;
    var color;

    List<Widget> columns = [];
    for (var y = 0; y < height; ++y) {
      List<Widget> rows = [];
      for (var x = 0; x < width; ++x) {
        if (nextBlock.subBlocks
                .where((subBlock) => subBlock.x == x && subBlock.y == y)
                .length >
            0) {
          color = nextBlock.color;
        } else {
          color = Colors.transparent;
        }

        rows.add(Container(width: 12, height: 12, color: color));
      }

      columns.add(
        Row(mainAxisAlignment: MainAxisAlignment.center, children: rows),
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: columns,
    );
  }
}
