import 'package:flutter/material.dart';
import '../Widgets/custom_star_rating.dart';

class StarRatingExample extends StatefulWidget {
  final int star;
  const StarRatingExample({Key? key, required this.star}) : super(key: key);

  @override
  State<StarRatingExample> createState() => _StarRatingExampleState();
}

class _StarRatingExampleState extends State<StarRatingExample> {

  Widget starRating = const CustomStarRating(star: 4, size: 20);
  int _active = 0;
  int _deactive = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'This is an example of "Custom Star rating"',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(child: starRating),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (){
                            setState((){

                            });
                          }, child: Text(
                        'Number of active star'
                      )),
                      Text('$_active'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (){
                            setState((){

                            });
                          }, child: Text(
                        'Number of non-active star'
                      )),
                      Text('$_deactive'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

