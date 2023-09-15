import 'package:example/weidght/out_bording_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../weidght/out_bording_indictor.dart';

class OutBordingContent extends StatefulWidget {
  const OutBordingContent({Key? key}) : super(key: key);

  @override
  State<OutBordingContent> createState() => _OutBordingContentState();
}

class _OutBordingContentState extends State<OutBordingContent> {
  PageController _pageController = PageController();
  int _counter = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 20,
            ),
            child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Visibility(
                visible: _counter < 2,
                // maintainAnimation: true,
                // maintainState: true,
                // maintainSize: true,
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2,
                        duration: Duration(seconds: 1), curve: Curves.easeIn);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 400,
            width: double.infinity,
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _counter = value;
                });
              },
              children: const [
                OutBordingScreen(),
                OutBordingScreen(),
                OutBordingScreen(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Visibility(
                visible: _counter > 0,
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _pageController.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeIn,
                      );
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: _counter > 0 ? Colors.black : Colors.grey,
                  ),
                ),
              ),
              Visibility(
                visible: _counter < 2,
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _pageController.nextPage(
                          duration: Duration(seconds: 1), curve: Curves.easeIn);
                    });
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: _counter == 2 ? Colors.grey : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutBordingIndictor(_counter == 0),
              OutBordingIndictor(_counter == 1),
              OutBordingIndictor(_counter == 2),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Visibility(
            visible: _counter == 2,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login_screen');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 20),
                  backgroundColor: Colors.blue),
              child: const Text(
                'START',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
