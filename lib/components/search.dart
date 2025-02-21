import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded( // ✅ Fix: Ensure TextField takes available width
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
