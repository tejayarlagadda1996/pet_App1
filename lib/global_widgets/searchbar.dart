import 'package:flutter/material.dart';

class PetSearchbar extends StatefulWidget {
  final String searchbarHintText;
  const PetSearchbar({super.key, required this.searchbarHintText});

  @override
  State<PetSearchbar> createState() => _PetSearchbarState();
}

class _PetSearchbarState extends State<PetSearchbar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    // ignore: unused_local_variable
    String searchText = _searchController.text;
    // Add functionality to search in the database with searchText
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 249, 246, 1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color.fromRGBO(237, 109, 78, 0.2),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            // search icon
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Color.fromRGBO(237, 109, 78, 1),
              ),
              onPressed: () {
                _performSearch();
              },
            ),
            const SizedBox(width: 8),

            // text field
            Expanded(
              child: TextField(
                controller: _searchController,
                style: const TextStyle(color: Color.fromRGBO(123, 68, 54, 1)),
                decoration: InputDecoration(
                  hintText: widget.searchbarHintText,
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(151, 151, 151, 1),
                    fontSize: 12,
                  ),
                  border: InputBorder.none,
                ),
                onSubmitted: (value) {
                  _performSearch();
                },
              ),
            ),

            // search with photo?
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {}, // add functionality
              icon: const Icon(
                Icons.image_outlined,
                color: Color.fromRGBO(237, 109, 78, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
