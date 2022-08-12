import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'login.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<String> images = [
    "https://m.apnlive.com/sortd-service/imaginary/v22-01/jpg/large/high?url=YXBuLW5ld3MtcHJvZC1zb3J0ZC9tZWRpYTgwNWM2ZGQwLWY5MjUtMTFlYy05YjA1LTU3MGQ0NDZjYjc2M2pwZw=="
    "https://static2.showtimes.com/poster/660x980/the-prom-netflix-149579.jpg",
    "https://images.immediate.co.uk/remote/m.media-amazon.com/images/M/MV5BY2E4MmNmMzgtOTI2YS00MzhjLTlmOWItZTkxNWRkYTY2NDcwXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg",
    "https://static1.showtimes.com/poster/660x980/project-power-netflix-146610.jpg",
    "https://pbs.twimg.com/media/FXuecPDVUAQ6nXe?format=jpg&name=900x900",
    "https://cdnb.artstation.com/p/assets/images/images/028/663/215/large/mateus-caetano-propaganda-final-english.jpg?1595144092",
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xff212121),
        child: Row(
          children: [
            _sheet(icon: Icons.search, text: "Search ", index: 0),
            _sheet(icon: Icons.tv, text: "Tv", index: 1),
            _sheet(icon: Icons.home, text: "Netflix +", index: 2),
            _sheet(icon: Icons.movie_sharp, text: "Movies", index: 3),
            _sheet(icon: Icons.sports_baseball_sharp, text: "Sports", index: 4),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff212121),
        child: ListView(children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 144, 129, 129)),
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xff212121),
                              backgroundImage: NetworkImage(
                                  "https://cdn.vox-cdn.com/thumbor/Yq1Vd39jCBGpTUKHUhEx5FfxvmM=/39x0:3111x2048/1200x800/filters:focal(39x0:3111x2048)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png")),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Loginpage1(),
                                    ),
                                  );
                                },
                                child: const Text("Log in")),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )),
          ListTile(
            leading: const Icon(Icons.download),
            iconColor: Colors.white,
            title: const Text("Downloads"),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.watch_later),
            iconColor: Colors.white,
            title: const Text("Watchlist"),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.gif_box),
            iconColor: Colors.white,
            title: const Text("Prizes"),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people_outline_sharp),
            iconColor: Colors.white,
            title: const Text("People Nearby"),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.wifi_channel_sharp),
            iconColor: Colors.white,
            title: const Text("Channles"),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.language),
            iconColor: Colors.white,
            title: const Text("Languages"),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.gesture),
            iconColor: Colors.white,
            title: const Text("Genres"),
            textColor: Colors.white,
            onTap: () {},
          ),
          const Divider(
            height: 18,
            color: Colors.black,
          ),
          ListTile(
            leading: const Icon(Icons.help),
            iconColor: Colors.white,
            title: const Text("Help"),
            textColor: Colors.white,
            onTap: () {},
          ),
          const Divider(
            height: 18,
            color: Colors.black,
          ),
          Row(
            children: [
              Column(
                children: const [
                  Text("Privacy Policy   .  T&C"),
                  Text("V12.4.2.1156"),
                ],
              ),
            ],
          )
        ]),
      ),
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff212121),
        centerTitle: true,
        title: const Text(
          "Netflix",
          style: TextStyle(
            color: Colors.red,
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.video_call,
                        color: Colors.black,
                      ),
                      Text("video Call"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.clear,
                        color: Colors.black,
                      ),
                      Text("Clear History"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.delete,
                        color: Colors.black,
                      ),
                      Text("Delete and Leave Group"),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recent Movie & Series",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            ImageSlideshow(
              width: double.infinity,
              height: 200,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.network(
                  'https://inreview52838412.files.wordpress.com/2020/09/h-the-baby-sitter-and-killer-queen-netflix.jpg?w=1366&h=768&crop=1',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://occ-0-1556-3212.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABVonkgZJeYPgDcRHfBr2Ppf0QsbEbw3KcbClZ44L2G_TVgVRUO0T_yjhgkH2blY3PFD1Wm8mCo3SeXEGJeAdPmczaTwMYUmPVW5L.jpg?r=295',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://i.ytimg.com/vi/gGwBDPqJh6k/maxresdefault.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://images.ctfassets.net/4cd45et68cgf/7JiW5JIJZaNi0LBJXQCuON/28ee69e49f0ca93e29adc4464e82f358/EN-US_MyNameS1_Teaser_Solo_Horizontal_RGB_PRE.jpg?w=2560',
                  fit: BoxFit.cover,
                )
              ],
            ),
            const ListTile(
              title: Text(
                " Popular In Netflix",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Image.network(images[index]),
                    );
                  },
                )),
            const ListTile(
              title: Text(
                " Continue Watching",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Image(
                image: NetworkImage(
                    "https://deadline.com/wp-content/uploads/2021/12/Dont-Look-Up-poster.jpg?w=1000"))
          ],
        ),
      ),
    );
  }

  _sheet({required IconData icon, required String text, required int index}) {
    var currentIndex;
    return Expanded(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              var currentIndex = index;
            });
          },
          icon: Icon(
            icon,
            color: currentIndex == index ? Colors.blue : Colors.white,
          ),
        ),
        Text(
          text.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ));
  }
}
