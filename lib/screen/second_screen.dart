import 'package:doctor/screen/thirdscreen.dart';
import 'package:flutter/material.dart';

class second_screen extends StatelessWidget {
  const second_screen({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Cardiologists",
          style: TextStyle(
            color: Color.fromARGB(255, 8, 63, 109),
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle first button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    "All",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 8.0),
                OutlinedButton(
                  onPressed: () {
                    // Handle second button press
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    "Top Rated",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(width: 8.0),
                OutlinedButton(
                  onPressed: () {
                    // Handle third button press
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    "Most Viewed",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(width: 8.0),
                OutlinedButton(
                  onPressed: () {
                    // Handle fourth button press
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    "Recommended",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                String name = "Doctor Name $index";
                String subtitle = "Specialization $index";
                double rating = 4.5;

                int imageIndex = index % 4 + 1;

                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Third_screen()),
                    );
                  },
                  leading: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                        image: AssetImage("asset/doctor/$imageIndex" "d.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(subtitle),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text("$rating"),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
