import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Biodata Pribadi';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
              image: 'images/foto.jpg',
              ),
              TitleSection(
                name: 'Nama : Wahyu Triyono',
                location: 'Alamat : Kaligondang, Purbalingga, Jawa Tengah',
              ),
              ButtonSection(),
              TextSection(
                  description:
                  'Perkenalkan nama saya Wahyu Triyono. Saya kuliah di salah satu Universitas yang ada di Purwokerto yaitu STMIK WIDYA UTAMA. Jurusan yang Saya ambil Teknik Informatika. Alamat Saya yaitu di Kaligondang, Purbalingga. Pendidikan terakhir saya yaitu SDN 2 Pagerandong, SMPN2 Kaligondang, dan SMKN1 Kaligondang.',
                  ),

              TextSection(
                  description:
                  'Salah satu hobi saya yaitu memasak. salah satu manfaat dari hobi memasak adalah Meningkatkan keterampilan. Memasak salah satu aktivitas total, artinya tak bisa diselesaikan setengahnya saja atau ditunda. Memasak membantu mengembangkan keterampilan hidup, seperti perencanaan, organisasi, dan pengambilan keputusan. Manfaat itu meningkatkan rasa percaya diri dan kemampuan dalam menyelesaikan tugas.',
                  ),    
            ],
            )
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'No.Telepon',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'Alamat',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'Bagikan',
          ),
        ],
      ),
    );
  }
}


class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 250,
      height: 175,
      fit: BoxFit.fill,
    );
  }
}