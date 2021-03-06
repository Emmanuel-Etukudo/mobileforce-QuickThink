import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickthink/data/new.dart';

class DashBoard extends StatefulWidget {

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  void showDifficultyBottomSheet(BuildContext context) {
    var radius = Radius.circular(10);
    String option = "easy";
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: radius, topRight: radius)),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(22),
          height: 360,
          child: Column(
            children: <Widget>[
              smallLine(),
              SizedBox(height: 25),
              Row(
                children: <Widget>[
                  Text(
                    "Select Difficulty",
                    style: GoogleFonts.poppins(
                      color: Color(0xff1C1046),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xffF6F3F3), shape: BoxShape.circle),
                    child: Text(
                      "?",
                      style: GoogleFonts.poppins(
                        color: Color(0xff1C1046),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 21),
              selections(
                onSelect: (String option1) {
                  setState(() {
                    option = option1;
                  });
                  print(option);
                },
              ),
              SizedBox(height: 48),
              SizedBox(
                width: double.maxFinite,
                height: 45,
                child: RaisedButton(
                  color: Color(0xff18C5D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (o) => SelectedDiff(title: option)));
                  },
                  child: Text(
                    "Start Game",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget smallLine() {
    return Container(
      height: 3,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Color(0xff1C1046),
      ),
    );
  }

  Widget selections({Function(String option) onSelect}) {
    final List<String> optionsName = ["Easy", "Average", "Hard"];
    final List<Color> optionColors = [
      Color(0xff86EC88),
      Color(0xffFBBD00),
      Color(0xffFF4D55)
    ];
    final List<String> time = ["05:00", "10:00", "20:00"];
    return Row(
      children: List.generate(
        optionsName.length,
            (index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                onSelect(optionsName[index]);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: optionColors[index],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      optionsName[index],
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${time[index]} min",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    showDifficultyBottomSheet(context);
    return Scaffold(
      backgroundColor: Color(0xff1c1046),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff18C5D9),
        onPressed: () {},
        child: Text(
          "?",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(14.0, 0, 14.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Hello, ",
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                            )),
                        TextSpan(
                            text: "Tiana",
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,

                                fontWeight: FontWeight.bold)),
                        TextSpan(text: '\n'),
                        TextSpan(
                            text: "Glad you're back",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,

                            ),
                        ),
                      ]
                          ),),

                      Container(
                        child: CircleAvatar(
                          backgroundColor: Color(0xff38208c),
                          radius: 28.5,
                          child: Image.asset("assets/images/owl 1.png"),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5.0),
                  ),

                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset("assets/images/Group 23.png"),
                                  SizedBox(width: 2.0,),
                                  Text("1000",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                              Text("points",
                                  style: TextStyle(
                                    color: Color(0xffdadada),
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        child: VerticalDivider(
                          thickness: 2.5,
                          color: Color(0xffDADADA),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/images/medal.png"),
                                    SizedBox(width: 2.0,),
                                    Text("30th",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                Text("Ranking",
                                    style: TextStyle(
                                      color: Color(0xffdadada),
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ))
                    ],
                  ),
                )),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Choose number of questions",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                    QuestionSelectionCard(
                      questionNum: 10,
                    ),
                    QuestionSelectionCard(
                      questionNum: 20,
                    ),
                    QuestionSelectionCard(
                      questionNum: 30,
                    ),
                    QuestionSelectionCard(
                      questionNum: 40,
                    ),
                    QuestionSelectionCard(
                      questionNum: 50,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class QuestionSelectionCard extends StatelessWidget {
  final questionNum;

  QuestionSelectionCard({@required this.questionNum});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      color: Color(0xff38208c),
      padding: EdgeInsets.fromLTRB(32, 20, 0, 17),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "$questionNum questions",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xfffff7e6)),
          )),
      onPressed: () {},
    );
  }
}
