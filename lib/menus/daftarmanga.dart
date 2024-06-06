import 'package:flutter/material.dart';

class DaftarMangaTab extends StatefulWidget {
  @override
  _DaftarMangaTabState createState() => _DaftarMangaTabState();
}

class _DaftarMangaTabState extends State<DaftarMangaTab> {
  List<Map<String, dynamic>> mangaList = [
    {
      "title": "One Piece",
      "image": "assets/onepiece.jpg",
      "rating": "4.9",
      "chapter": "Chapter 1095",
    },
    {
      "title": "Kimetsu no Yaiba",
      "image": "assets/kimetsu.jpg",
      "rating": "4.8",
      "chapter": "Chapter 205 End",
    },
    {
      "title": "Jujutsu Kaisen",
      "image": "assets/jujutsu.jpg",
      "rating": "4.7",
      "chapter": "Chapter 239",
    },
    {
      "title": "One Punch Man",
      "image": "assets/onepunch.png",
      "rating": "4.7",
      "chapter": "Chapter 244",
    },
    {
      "title": "Attack on Titan",
      "image": "assets/aot.jpg",
      "rating": "4.7",
      "chapter": "Chapter 76",
    },
    {
      "title": "Dr. Stone",
      "image": "assets/stone.jpg",
      "rating": "4.7",
      "chapter": "Chapter 232",
    },
    {
      "title": "Chainsaw Man",
      "image": "assets/chainsaw.jpg",
      "rating": "4.7",
      "chapter": "Chapter 146",
    },
    {
      "title": "Kingdom",
      "image": "assets/kingdom.jpg",
      "rating": "4.7",
      "chapter": "Chapter 761",
    },
    {
      "title": "Naruto",
      "image": "assets/naruto.jpg",
      "rating": "4.9",
      "chapter": "Chapter 222",
    },
    {
      "title": "Hunter x Hunter",
      "image": "assets/hxh.png",
      "rating": "4.9",
      "chapter": "Chapter 400",
    },
  ];

  List<Map<String, dynamic>> filteredMangaList = [];

  @override
  void initState() {
    filteredMangaList = mangaList;
    super.initState();
  }

  void filterMangaList(String query) {
    setState(() {
      filteredMangaList = mangaList
          .where((manga) =>
              manga["title"].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (query) {
              filterMangaList(query);
            },
            decoration: InputDecoration(
              labelText: "Cari Manga",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.5,
            ),
            itemCount: filteredMangaList.length,
            itemBuilder: (context, index) {
              final manga = filteredMangaList[index];
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
                          manga["image"],
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
                            manga["title"],
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
                                manga["rating"],
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            manga["chapter"],
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
        )
      ],
    );
  }
}
