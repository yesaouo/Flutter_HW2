import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hw2_talent/members.dart';
import 'package:hw2_talent/gacha.dart';

void main() {
  runApp(const MyApp());
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MembersTab(),
    RandomImage(),
  ];
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_isPlaying) {
            _audioPlayer.pause();

            setState(() {
              _isPlaying = false;
            });
          } else {
            await _audioPlayer
                .play(AssetSource('Dreaming_Days（Midnight_ver.）.mp3'));

            setState(() {
              _isPlaying = true;
            });
          }
        },
        shape: const CircleBorder(),
        child: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond),
            label: 'Gacha',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(0xff, 0x06, 0x3f, 0x5c)),
        useMaterial3: true,
      ),
      home: const MyPage(),
    );
  }
}
