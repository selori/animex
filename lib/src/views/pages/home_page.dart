import 'package:flutter/material.dart';
import '../widgets/full_slider_widget.dart';

class HomePage extends StatelessWidget {
  final List<FullSliderItem> sliderItems = [
  FullSliderItem(
    imageUrl: 'https://cdn.myanimelist.net/images/anime/1223/96541.jpg',
    title: 'Fullmetal Alchemist: Brotherhood',
    description: 'Two brothers search for a Philosopher\'s Stone after an attempt to bring their mother back goes wrong.',
  ),
  FullSliderItem(
    imageUrl: 'https://cdn.myanimelist.net/images/anime/10/47347.jpg',
    title: 'Attack on Titan',
    description: 'Humanity fights for survival against giant humanoid creatures called Titans.',
  ),
  FullSliderItem(
    imageUrl: 'https://cdn.myanimelist.net/images/anime/1286/99889.jpg',
    title: 'Demon Slayer',
    description: 'A young boy becomes a demon slayer after his family is slaughtered and his sister is turned into a demon.',
  ),
];


  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        FullSliderWidget(items: sliderItems),
        Container(
          height: 200,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Another Content Below',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        // Add more content as needed
      ],
    );
  }
}
