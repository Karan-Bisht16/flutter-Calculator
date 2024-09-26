import 'package:flutter/material.dart';
import 'package:calculator/components/button_text.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String display = "";

  final displayFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayFieldController.text = display;
  }

  @override
  void dispose() {
    displayFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                display,
                overflow: TextOverflow.clip,
                maxLines: 1,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    clear();
                  });
                },
                backgroundColor: const Color(0xFF606060),
                child: const ButtonText(
                  content: "AC",
                  textColor: 0xFFFFFFFF,
                ),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    backspacePressed();
                  });
                },
                backgroundColor: const Color(0xFF606060),
                child: const Icon(
                  Icons.backspace,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("%");
                  });
                },
                backgroundColor: const Color(0xFF005DB2),
                child: const ButtonText(
                  content: "%",
                  textColor: 0xFFFFFFFF,
                ),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("÷");
                  });
                },
                backgroundColor: const Color(0xFF005DB2),
                child: const ButtonText(
                  content: "÷",
                  textColor: 0xFFFFFFFF,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("7");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "7"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("8");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "8"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("9");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "9"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("x");
                  });
                },
                backgroundColor: const Color(0xFF005DB2),
                child: const ButtonText(
                  content: "x",
                  textColor: 0xFFFFFFFF,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("4");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "4"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("5");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "5"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("6");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "6"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("-");
                  });
                },
                backgroundColor: const Color(0xFF005DB2),
                child: const ButtonText(
                  content: "-",
                  textColor: 0xFFFFFFFF,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("1");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "1"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("2");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "2"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("3");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "3"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("+");
                  });
                },
                backgroundColor: const Color(0xFF005DB2),
                child: const ButtonText(
                  content: "+",
                  textColor: 0xFFFFFFFF,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("0");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "0"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay(".");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "."),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    addToDisplay("^");
                  });
                },
                backgroundColor: const Color(0xFF2F3136),
                child: const ButtonText(content: "^"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  setState(() {
                    equalPressed();
                  });
                },
                backgroundColor: const Color(0xFF1991FF),
                child: const ButtonText(
                  content: "=",
                  textColor: 0xFFFFFFFF,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void clear() {
    display = "";
    displayFieldController.text = display;
  }

  void addToDisplay(String value) {
    if (display == "Invalid String") {
      display = "";
      displayFieldController.text = display;
    }
    display = '${displayFieldController.text}$value';
    displayFieldController.text = display;
  }

  void backspacePressed() {
    if (display.isNotEmpty) {
      display = display.substring(0, display.length - 1);
      displayFieldController.text = display;
    }
  }

  void equalPressed() {
    Parser parser = Parser();
    String evaluationInput = display.replaceAll("x", "*");
    try {
      Expression exp = parser.parse(evaluationInput);
      ContextModel contextModel = ContextModel();
      double result = exp.evaluate(EvaluationType.REAL, contextModel);
      display = result.toString();
      displayFieldController.text = display;
    } catch (error) {
      display = "Invalid String";
      displayFieldController.text = display;
    }
  }
}
