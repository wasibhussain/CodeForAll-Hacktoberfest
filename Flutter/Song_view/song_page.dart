
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'neu_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              // back button , menu button
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 60,
                    child: NeuBox(x: Icon(Icons.arrow_back_ios_new_outlined)),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 50,
                    width: 60,
                    child: NeuBox(x: Icon(Icons.menu)),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              // cover art , artist , song name

              Container(
                // width: MediaQuery.of(context).size.width-50,
                child: NeuBox(
                  x: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'lib/Song_view/pic.jpg',
                          fit: BoxFit.fill,
                          width: 275,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Krishna Krishna Bolo Krishna Krishna',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey[800]),
                              ),
                              const Text(
                                "Hare Studio's",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // start time , shuffle , repeat , endtime

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('04:23'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Icon(Icons.playlist_add_check),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              //progress bar

              NeuBox(
                x: LinearPercentIndicator(
                  
                  lineHeight: 10,
                  percent: 0.8,
                  progressColor: Colors.green,
                  backgroundColor: Colors.white,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 100,
                    child: NeuBox(
                        x: Icon(Icons.skip_previous,
                            size: 40, color: Colors.grey[800])),
                  ),
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: NeuBox(
                        x: Icon(Icons.play_arrow,
                            size: 40, color: Colors.grey[800])),
                  ),
                  SizedBox(
                    height: 60,
                    width: 100,
                    child: NeuBox(
                        x: Icon(
                      Icons.skip_next,
                      size: 40,
                      color: Colors.grey[800],
                    )),
                  ),
                ],
              )

              //previous , pause/play , skipp
            ],
          ),
        ),
      ),
    );
  }
}
