import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomStarRating extends StatefulWidget {
  final int star;
  final double size;
  const CustomStarRating({Key? key, required this.star, required this.size}) : super(key: key);

  @override
  State<CustomStarRating> createState() => _CustomStarRatingState();
}

class _CustomStarRatingState extends State<CustomStarRating> {
  int star = 0 ;
  List<bool> s = [false,false,false,false,false];

  double size = 10;

  @override
  void initState() {
    star = widget.star;
    size = widget.size;
    _setStar(star);
  }

  _setStar(int star){
    setState((){
      if(star == 1){
        s = [true, false, false, false, false];
      }else if(star == 2){
        s = [true, true, false, false, false];
      }else if(star == 3){
        s = [true, true, true, false, false];
      }else if(star == 4){
        s = [true, true, true, true, false];
      }else if(star == 5){
        s = [true, true, true, true, true];
      }else{
        s = [false, false, false, false, false];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        starRating(active: s[0],index: 1),
        starRating(active: s[1],index: 2),
        starRating(active: s[2],index: 3),
        starRating(active: s[3],index: 4),
        starRating(active: s[4],index: 5),
      ],
    );
  }

  Widget starRating({required bool active, required int index}){
    Icon star =
      active ? Icon(CupertinoIcons.star_fill, color: Colors.orange,size: size,) :
      Icon(CupertinoIcons.star, size: size);
    return Expanded(
      child: InkWell(
          child: star,
        onTap: (){
            setState((){
              _setStar(index);
            });
        },
      ),
    );
  }

  int getRating() =>  widget.star;
  int getUnRating() => 5 - star;

}

