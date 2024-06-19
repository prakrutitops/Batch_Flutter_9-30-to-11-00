import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';


class Category extends StatefulWidget{
  var index;
  var category_name;

  Category({this.index,this.category_name});

  @override
  CategoryPage createState() => CategoryPage(category_id: index,category_nm: category_name);
}

class CategoryPage extends State<Category> {
  var size;

  var category_id;
  var category_nm;
  CategoryPage({this.category_id,this.category_nm});

  Future<List> viewCategoryItemsData() async{
    final responce = await http.get(Uri.parse("https://topstech8.000webhostapp.com/Morning_Batch/API/category_images_view.php?data=${widget.index}"));
    return jsonDecode(responce.body);
  }

  @override
  Widget build(BuildContext context){
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("${category_nm}".toUpperCase(),style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black)),
        backgroundColor: Colors.grey,

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<List>(
                future: viewCategoryItemsData(),
                builder: (ctx,ss) {
                  if(ss.hasData){
                    return Items(list_:ss.data!,size_: size);
                  }
                  else{
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Items extends StatefulWidget {
  List list_;
  var size_;

  Items({required this.list_, this.size_});

  @override
  State<StatefulWidget> createState() {
    return ItemsState(list:list_,size: size_);
  }
}

class ItemsState extends State<Items>{
  List list;
  var size;

  ItemsState({required this.list,this.size});


  Future<void> _share(var url) async
  {
    String fileName = url.substring(url.lastIndexOf("/") + 1);
    final uri = Uri.parse(url);
    final res = await http.get(uri);
    final bytes = res.bodyBytes;
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/$fileName';
    File(path).writeAsBytesSync(bytes);
    await Share.shareFiles([path]);
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        crossAxisCount: 2,
        // padding: EdgeInsets.all(10),
        children: List.generate(list.length, (index) {
          return Card(
              elevation: 3,
              shadowColor: Colors.amber,
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Image.network(list[index]['c_images'],
                    errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                      return SizedBox(
                        height: size.height*17/100,
                        child: Center(
                          child: Icon(Icons.error,size: 40, /*color: kBrown,*/),
                        ),
                      );
                    },
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return SizedBox(
                        height: size.height*17/100,
                        child: Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    },
                    height: size.height*17.4/100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: size.height*6/120,
                    decoration: BoxDecoration(
                      /*color: kGold,*/
                    ),
                    child: Row(
                      children: [
                        SizedBox(height: size.height*2.5/100),
                        SizedBox(width: size.width*10/100),
                        InkWell(
                          onTap: (){
                           _share(list[index]['c_images']);
                          },

                          child: Icon(Icons.share,color: Colors.white),
                        ),
                        SizedBox(width: size.width*17/95),
                        InkWell(
                          onTap: (){
                           // _save(list[index]['c_images']);
                          },
                          child: Icon(Icons.download,color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          );
        }),
      ),
    );
  }
}