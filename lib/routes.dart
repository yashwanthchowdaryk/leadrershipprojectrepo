import 'package:flutter/material.dart';
import 'package:project_leadership/storiesui.dart';
import 'feed.dart';
import 'people.dart';
import 'stories.dart';
import 'metting.dart';
import 'registered.dart';
class HomeScreen extends StatefulWidget {

  HomeScreen({Key? key}):super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {

  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {

    return  WillPopScope(
      onWillPop: () async {
        if (_navigatorKey.currentState!.canPop()) {
          _navigatorKey.currentState!.pop();
          return false;
        }else{
          return true;
          // SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        }

      },
      child:Navigator(
        key: _navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          // Manage your route names here
          switch (settings.name) {
            case '/':
              builder = (BuildContext context) =>Story();
              break;
            case '/second':
              builder = (BuildContext context) =>Sui();
              break;

            // case '/location':
            //   builder = (BuildContext context) => LocationScreen();
            //   break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          // You can also return a PageRouteBuilder and
          // define custom transitions between pages
          return MaterialPageRoute(
            builder: builder,
            settings: settings,
          );
        },
      ),
    );

  }
}

