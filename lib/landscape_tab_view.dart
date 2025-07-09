import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandscapeTabView extends StatefulWidget {
  final Widget child;
  final double? width;

  const LandscapeTabView({super.key, required this.child, this.width = 400});

  @override
  State<LandscapeTabView> createState() => _LandscapeTabViewState();
}

MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.center;

class _LandscapeTabViewState extends State<LandscapeTabView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isTablet = constraints.maxWidth >= 600;

        if (isTablet) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
        } else {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
        }

        return OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.landscape) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Row(
                  mainAxisAlignment: _mainAxisAlignment,
                  children: [
                    Visibility(
                      visible: _mainAxisAlignment != MainAxisAlignment.start,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mainAxisAlignment == MainAxisAlignment.end) {
                              _mainAxisAlignment = MainAxisAlignment.center;
                            } else {
                              _mainAxisAlignment = MainAxisAlignment.start;
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: widget.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
                      child: MediaQuery(
                        data: MediaQuery.of(context).copyWith(
                          size: Size(
                            widget.width!,
                            MediaQuery.of(context).size.height,
                          ),
                        ),
                        child: widget.child,
                      ),
                    ),
                    Visibility(
                      visible: _mainAxisAlignment != MainAxisAlignment.end,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (_mainAxisAlignment == MainAxisAlignment.start) {
                              _mainAxisAlignment = MainAxisAlignment.center;
                            } else {
                              _mainAxisAlignment = MainAxisAlignment.end;
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return widget.child;
            }
          },
        );
      },
    );
  }
}
