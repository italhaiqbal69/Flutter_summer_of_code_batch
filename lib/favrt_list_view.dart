import 'package:flutter/material.dart';
import 'package:nacttac_summerofcode3/provider/favrt_list.dart';
import 'package:provider/provider.dart';

class FavrtListView extends StatefulWidget {
  const FavrtListView({super.key});

  @override
  State<FavrtListView> createState() => _FavrtListViewState();
}

class _FavrtListViewState extends State<FavrtListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favrt List View')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Consumer<FavrtProvider>(
            builder: (context, favrtProvider, child) {
              final item = 'Item ${index + 1}';
              final isFavrt = favrtProvider.favrtList.contains(item);
              return ListTile(
                tileColor: isFavrt ? Colors.green[100] : null,
                title: Text(item),
                trailing: IconButton(
                  icon: Icon(
                    isFavrt ? Icons.favorite : Icons.favorite_border,
                    color: isFavrt ? Colors.red : null,
                  ),
                  onPressed: () {
                    if (isFavrt) {
                      favrtProvider.removeFromFavrt(item);
                    } else {
                      favrtProvider.addToFavrt(item);
                    }
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
