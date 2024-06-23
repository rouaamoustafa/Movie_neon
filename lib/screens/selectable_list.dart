import 'package:flutter/material.dart';

class SelectableList extends StatefulWidget {
  const SelectableList({super.key});

  @override
  _SelectableListState createState() => _SelectableListState();
}

class _SelectableListState extends State<SelectableList> {
  final List<String> pagesName = ["For you", "Popular", "TV Shows", "News", "Popular", "Popular"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 520,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pagesName.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          final displayText = isSelected ? ". ${pagesName[index]}" : pagesName[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              if (pagesName[index] == "Popular") {
                Navigator.pushNamed(context, '/popular');
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                displayText,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Axiforma",
                  color: isSelected ? Colors.white : Colors.grey,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
