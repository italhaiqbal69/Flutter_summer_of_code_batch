import 'package:flutter/material.dart';

class MetroLayoutScreen extends StatelessWidget {
  const MetroLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 8,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            MetroTile(
                              color: Colors.green,
                              icon: Icons.widgets,
                              flex: 4,
                            ),
                            MetroTile(
                              color: Colors.deepOrange,
                              icon: Icons.send,
                              flex: 4,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const MetroTile(
                              color: Colors.lightBlue,
                              icon: Icons.wifi,
                              flex: 2,
                            ),
                            Expanded(
                              flex: 6,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: const [
                                        MetroTile(
                                          color: Colors.amber,
                                          icon: Icons.tv,
                                          flex: 4,
                                        ),
                                        MetroTile(
                                          color: Colors.red,
                                          icon: Icons.bluetooth,
                                          flex: 2,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: const [
                                        MetroTile(
                                          color: Colors.brown,
                                          icon: Icons.map,
                                          flex: 2,
                                        ),
                                        MetroTile(
                                          color: Colors.indigo,
                                          icon: Icons.videocam,
                                          flex: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      MetroTile(
                        color: Colors.pink,
                        icon: Icons.battery_alert,
                        flex: 3,
                      ),
                      MetroTile(
                        color: Colors.purple,
                        icon: Icons.desktop_windows,
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                const MetroTile(color: Colors.blue, icon: Icons.radio, flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MetroTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int flex;

  const MetroTile({
    Key? key,
    required this.color,
    required this.icon,
    this.flex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.all(4.0),
        color: color,
        child: Center(child: Icon(icon, color: Colors.white, size: 36.0)),
      ),
    );
  }
}
