import 'package:doctor/screen/thirdscreen.dart';
import 'package:doctor/screen/second_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Specialist',
          style: TextStyle(
            color: Color.fromARGB(255, 8, 63, 109),
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 22.0,
          mainAxisSpacing: 8.0,
          shrinkWrap: true,
          children: List.generate(
            12,
            (index) {
              final cardImagePath = 'asset/card/${index + 1}card.png';
              return GestureDetector(
                onTap: () {
                  // Navigate to a different page based on the tapped card
                  _navigateToDetailPage(context, index);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Card(
                    elevation: 5.0,
                    shape: const RoundedRectangleBorder(
                        ),
                    child: Image.asset(
                      cardImagePath,
                      fit: BoxFit.fitHeight,
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

  void _navigateToDetailPage(BuildContext context, int cardIndex) {
    if (cardIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const second_screen(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(cardIndex: cardIndex),
        ),
      );
    }
  }
}

class DetailPage extends StatelessWidget {
  final int cardIndex;

  const DetailPage({Key? key, required this.cardIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card $cardIndex Detail'),
      ),
      body: Center(
        child: Text('Details for Card $cardIndex'),
      ),
    );
  }
}
