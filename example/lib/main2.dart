// See https://github.com/akshathjain/sliding_up_panel/issues/289
// Run within example/: flutter run -t lib/main2.dart

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() => runApp(MaterialApp(home: PanelScreen()));

class PanelScreen extends StatefulWidget {
  PanelScreen() : super();

  @override
  _PanelScreenState createState() => _PanelScreenState();
}

class _PanelScreenState extends State<PanelScreen> with RouteAware {
  double _panelHeightOpen = 400;
  PanelController _pc = new PanelController();
  late ScrollController _sc;

  @override
  void dispose() {
    _sc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
    );
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: appBar,
      body: SlidingUpPanel(
        maxHeight: _panelHeightOpen,
        minHeight: 5,
        // defaultPanelState: PanelState.CLOSED,
        snapPoint: 0.6,
        isDraggable: true,
        backdropEnabled: true,
        controller: _pc,
        panelBuilder: (sc) {
          _sc = sc;
          return Container();
        },
        body: Padding(
          padding: EdgeInsets.zero,
          // padding: EdgeInsets.only(
          //     bottom: appBar.preferredSize.height +
          //         MediaQuery.of(context).viewPadding.top),
          child: ListView(
            children: [
              Container(
                  child: Text('1'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade100),
              Container(
                  child: Text('2'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade200),
              Container(
                  child: Text('3'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade300),
              Container(
                  child: Text('4'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade400),
              Container(
                  child: Text('5'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade500),
              Container(
                  child: Text('6'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade600),
              Container(
                  child: Text('7'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade700),
              Container(
                  child: Text('8'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade800),
              Container(
                  child: Text('9'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade900),
              Container(
                  child: Text('1'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade100),
              Container(
                  child: Text('2'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade200),
              Container(
                  child: Text('3'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade300),
              Container(
                  child: Text('4'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade400),
              Container(
                  child: Text('5'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade500),
              Container(
                  child: Text('6'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade600),
              Container(
                  child: Text('7'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade700),
              Container(
                  child: Text('8'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade800),
              Container(
                  child: Text('9'),
                  height: 50,
                  width: double.infinity,
                  color: Colors.green.shade900),
            ],
          ),
        ),
      ),
    );
  }
}
