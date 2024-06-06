import 'package:flutter/material.dart';

class Manga {
  final String title;
  final String image;
  final String rating;
  final String chapter;

  Manga(this.title, this.image, this.rating, this.chapter);
}

final List<Manga> popularMangaList = [
  Manga("One Piece", "assets/onepiece.jpg", "4.9", "Chapter 1095"),
  Manga("Kimetsu no Yaiba", "assets/kimetsu.jpg", "4.8", "Chapter 205 End"),
  Manga("Jujutsu Kaisen", "assets/jujutsu.jpg", "4.7", "Chapter 239"),
  Manga("Naruto", "assets/naruto.jpg", "4.9", "Chapter 222"),
  Manga("Hunter x Hunter", "assets/hxh.png", "4.9", "Chapter 400"),
];

final List<Manga> recentMangaList = [
  Manga("Chainsaw Man", "assets/chainsaw.jpg", "4.7", "Chapter 146"),
  Manga("Jujutsu Kaisen", "assets/jujutsu.jpg", "4.7", "Chapter 239"),
  Manga("One Punch Man", "assets/onepunch.png", "4.7", "Chapter 244"),
  Manga("One Piece", "assets/onepiece.jpg", "4.9", "Chapter 1095"),
  Manga("Attack on Titan", "assets/aot.jpg", "4.7", "Chapter 76"),
  Manga("Dr. Stone", "assets/stone.jpg", "4.7", "Chapter 232"),
  Manga("Kingdom", "assets/kingdom.jpg", "4.7", "Chapter 761"),
  Manga("Hunter x Hunter", "assets/hxh.png", "4.9", "Chapter 400"),
  Manga("Naruto", "assets/naruto.jpg", "4.9", "Chapter 222"),
];

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Manga Terpopuler
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Manga Populer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularMangaList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              popularMangaList[index].image,
                              height: 200,
                              width: 130,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                popularMangaList[index].title,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  Text(
                                    popularMangaList[index].rating,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                popularMangaList[index].chapter,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),

        // Manga Terbaru
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Manga Terbaru",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 0.5,
              ),
              itemCount: recentMangaList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            recentMangaList[index].image,
                            height: 190,
                            width: 130,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recentMangaList[index].title,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Text(
                                  recentMangaList[index].rating,
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              recentMangaList[index].chapter,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
        ),
      ],
    );
  }
}
