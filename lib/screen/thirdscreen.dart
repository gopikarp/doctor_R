import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Third_screen extends StatelessWidget {
  const Third_screen({super.key});

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
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {
              // Handle heart icon press
            },
          ),
        ],
        title: const Text(
          'Cardiology',
          style: TextStyle(
            color: Color.fromARGB(255, 8, 63, 109),
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'asset/doctor/d.jpg',
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 10),
              const Text(
                'Dr. Yeasin Arafat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              const Text('Orthopedist'),
              const Text('12 years experience averall All '),
              const Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Text("5.0"),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.timelapse_rounded,
                    color: Colors.blue,
                  ),
                  Text("10:00 AM-12:00 PM")
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Text('Sunamganj Sadar Hospital Hasan Nagar'),
              Image.asset(
                'asset/card/map.jpg',
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 20),
              const Text(
                'Doctor Reviews',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              const Align(
                  alignment: Alignment.topRight, child: Text('See more')),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.blue,
                ),
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: const DecorationImage(
                          image: AssetImage("asset/doctor/3d.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Muhammad',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            'Dr. Muhammad is really a nice Doctor. \n He is very carefull resposible.'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.grey),
                            Text("4"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Doctor Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const ReadMoreText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vestibulum quam et turpis sodales, a malesuada lorem finibus. In hac habitasse platea dictumst.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: '...Read more',
                trimExpandedText: ' Show less',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add your action here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    icon: const Icon(Icons.chat_bubble_outline, size: 16.0),
                    label:
                        const Text('Message', style: TextStyle(fontSize: 10.0)),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    icon: const Icon(Icons.call_outlined, size: 16.0),
                    label: const Text('Audio Call',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add your action here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    icon: const Icon(Icons.video_call_outlined, size: 12.0),
                    label: const Text('Video Call',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor Fees',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    '700 TK',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 3, 72, 128),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Book an Appointment'),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
