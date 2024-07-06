import 'package:flutter/material.dart';
import 'detail_film_screen.dart';

class ListFilmScreen extends StatelessWidget {
  final List<Map<String, dynamic>> filmData = [
    {
      "nama": "Inception",
      "tanggalRilis": "16 Juli 2010",
      "image": "assets/images/inception.jpeg",
      "gallery": [
        "assets/images/inception1.jpeg",
        "assets/images/inception2.jpeg",
        "assets/images/inception3.jpeg"
      ],
      "desc": "Inception adalah film thriller fiksi ilmiah yang disutradarai oleh Christopher Nolan. Film ini mengisahkan tentang Dom Cobb, seorang pencuri yang menggunakan teknologi untuk memasuki alam bawah sadar seseorang."
    },
    {
      "nama": "The Matrix",
      "tanggalRilis": "31 Maret 1999",
      "image": "assets/images/matrix.jpeg",
      "gallery": [
        "assets/images/matrix1.jpeg",
        "assets/images/matrix2.jpeg",
        "assets/images/matrix3.jpeg"
      ],
      "desc": "The Matrix adalah film aksi fiksi ilmiah yang disutradarai oleh Wachowski Brothers. Film ini bercerita tentang seorang programmer bernama Neo yang menemukan kebenaran tentang realitas yang ia tinggali."
    },
    {
      "nama": "Interstellar",
      "tanggalRilis": "7 November 2014",
      "image": "assets/images/interstellar.jpeg",
      "gallery": [
        "assets/images/interstellar1.jpeg",
        "assets/images/interstellar2.jpeg",
        "assets/images/interstellar3.jpeg"
      ],
      "desc": "Interstellar adalah film petualangan fiksi ilmiah yang disutradarai oleh Christopher Nolan. Film ini mengikuti perjalanan sekelompok penjelajah yang melakukan perjalanan melalui lubang cacing untuk mencari tempat tinggal baru bagi umat manusia."
    },
    {
      "nama": "Avengers: Endgame",
      "tanggalRilis": "26 April 2019",
      "image": "assets/images/endgame.jpeg",
      "gallery": [
        "assets/images/endgame1.jpeg",
        "assets/images/endgame2.jpeg",
        "assets/images/endgame3.jpeg"
      ],
      "desc": "Avengers: Endgame adalah film superhero yang disutradarai oleh Anthony dan Joe Russo. Film ini adalah bagian dari Marvel Cinematic Universe dan melanjutkan kisah setelah peristiwa Avengers: Infinity War."
    },
    {
      "nama": "Parasite",
      "tanggalRilis": "30 Mei 2019",
      "image": "assets/images/parasite.jpeg",
      "gallery": [
        "assets/images/parasite1.jpeg",
        "assets/images/parasite2.jpeg",
        "assets/images/parasite3.jpeg"
      ],
      "desc": "Parasite adalah film thriller komedi hitam yang disutradarai oleh Bong Joon-ho. Film ini mengisahkan tentang keluarga miskin yang menyusup ke dalam kehidupan keluarga kaya dan berakhir dengan cara yang tragis."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Film Terbaik'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_film.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: filmData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFilmScreen(
                        nama: filmData[index]["nama"],
                        tanggalRilis: filmData[index]["tanggalRilis"],
                        image: filmData[index]["image"],
                        gallery: filmData[index]["gallery"],
                        desc: filmData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${filmData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${filmData[index]["nama"]} - ${filmData[index]["tanggalRilis"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
