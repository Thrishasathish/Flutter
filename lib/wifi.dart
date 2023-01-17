import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class wifi extends StatelessWidget {
  const wifi({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(
        title: new Text("Offline Demo"),
      ),
      body: OfflineBuilder(
        connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          final bool connected = connectivity != ConnectivityResult.none;
          return  Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                height: 24.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                    color: connected ? Color(0xFF00EE44) : Color(0xFFEE4400),
                    child: Center(
                  child: Text("${connected ? 'ONLINE' : 'OFFLINE'}"),
                )),
              ),
              Center(
                  child: Column(
                children: [
                  Image.asset(
                    'assets/home.png',
                    height: 400,
                    width: 400,
                  ),
                ],
              )),
            ],
          );
        },
        child: Column(),
      ),
    );
  }
}
