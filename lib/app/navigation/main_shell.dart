import 'package:flutter/flutter.dart';
import 'package:flutter/cupertino/cupertino.dart';
import '../../features/home/home_screen.dart';
import '../../features/posts/posts_screen.dart';
import '../../features/create_post/create_post_screen.dart';
import '../../features/settings/settings_screen.dart';

class MainShell extends Stateful StatelessWidget {
  const MainShell({ Key key });

  int _currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageController(children: _buildBody()),
      bottomNavigationBar : BottomNavigationBar(
        currentIndex: _currentIndex,
        onTapSelected: (int i) {
          setState(() => _currentIndex = i);
        },
        items: [
          BottomNavItem(icon: Icons.home, tablabel: 'Home')
         , BottomNavItem(icon: Icons.list, tablabel: 'Posts')
        , BottomNavItem(icon: Icons.add, tablabel: 'Create')
         , BottomNavItem(icon: Icons.settings, tablabel: 'Settings')
        ],
      )
    );
  }

  Widget _buildBody() {
    switch(_currentIndex) {
      case 0: return HomeScreen();
      case 1: return PostsScreen();
      case 2: return CreatePostScreen();
      case 3: return SettingsScreen();
      default: return Text('Wrong Index');
    }
  }
}
