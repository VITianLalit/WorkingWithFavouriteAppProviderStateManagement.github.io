import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/favourite_provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteScreenProvider>(context, listen: false);
    List<int> selectItem = provider.selectedItemList;
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("FavouriteScreen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1000,
              itemBuilder: (context, index){
                return Consumer<FavouriteScreenProvider>(builder: (context, item, child ){
                  return ListTile(
                    onTap: (){
                      if(item.selectedItemList.contains(index)){
                        item.removeList(index);
                      }else{
                        item.setList(index);
                      }
                    },
                    title: Text("Item :" + index.toString()),
                    trailing: selectItem.contains(index)? Icon(Icons.favorite): Icon(Icons.favorite_border),
                  );
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
