import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/models/suggestion_model.dart';
import 'package:flutter_app_enable_ventures/views/home_page/components/suggestion_section/components/suggestion_card.dart';

class SuggestionSection extends StatefulWidget {
  final List<SuggestionModel> list;

  const SuggestionSection({Key key, this.list}) : super(key: key);
  @override
  _SuggestionSectionState createState() => _SuggestionSectionState();
}

class _SuggestionSectionState extends State<SuggestionSection> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: widget.list.length,
          options: CarouselOptions(
            height: 175,
            initialPage: 0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),          
          itemBuilder: (context, index, i) {
            SuggestionModel suggestion = widget.list[index];
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SuggestionCard(
                suggestion: suggestion,
              ),
            );
          },
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.list.map((e) {
            int index = widget.list.indexOf(e);
            return Container(
              width: 15,
              height: 15,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.white
                    : Color.fromRGBO(0, 0, 0, 0.2),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
