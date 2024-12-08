import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              SizedBox(
                width: 6,
              ),
              Text('AUS vs PAK ^',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
              Spacer(),
              Row(
                children: [
                  Icon(Icons.share, color: Colors.white),
                  SizedBox(width: 6),
                  Text(
                    'कA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 6),
                  Icon(Icons.dark_mode, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Live",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    Text(
                      'Scored',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    Text(
                      'MVP',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    Text(
                      'Report',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'Commentary',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                  height: 10), // Adds some space between the row and the text
              const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  'REPORT',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 12, // Adjust font size for visibility
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  'Maxwell sets up Australia win in seven over thrash',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  'Pakistan slumped to 24 for six in the first four overs before finishing with 64 for nine',
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 17),
                ),
              ),
              Container(
                height: 30,
                child: const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,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'),
                      maxRadius: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Danyal Rasool',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19),
                          child: Text(
                            '14-Nov-2024 Updated 1 hr ago',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.w100),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.share),
                    Icon(Icons.attach_file_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Image.network(
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSWg_b5e_-8gz8qBgbDY64agv6tPBPBvZQVw4Klb-dl4s8jx8JX',
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  'Glenn Maxwell reverse swats a boundry <> Getty images',
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 10),
                ),
              ),

              Row(
                children: [
                  Text(
                    'Austraila',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text('93 for 4 (Maxwell 43, Stoinis'),
                  Text(' 21*, Afridi2-9) beat ')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
