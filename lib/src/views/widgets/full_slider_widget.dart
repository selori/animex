import 'package:flutter/material.dart';

class FullSliderItem extends StatelessWidget {
  final String imageUrl;
  final String title
;
  final String description;

  FullSliderItem({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.
fill(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0),
                ],
                begin: Alignment.bottomCenter,
                end:
 Alignment.topCenter,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 80,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Divider(
                        color: Colors.white.withOpacity(0.5),
                        thickness: 2,
                        indent: 50,
                        endIndent: 50,
                      ),
                      Text(
                        description,
                        style: TextStyle(color: Colors.white.
withOpacity(0.8)),
                        textAlign: TextAlign.center,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FullSliderWidget extends StatefulWidget {
  final List<FullSliderItem> items;

  FullSliderWidget({required this.items});

  @override
  _FullSliderWidgetState createState() => _FullSliderWidgetState();
}

class _FullSliderWidgetState extends State<FullSliderWidget> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: widget.items.map((item) => item).toList(),
    );
  }
}
