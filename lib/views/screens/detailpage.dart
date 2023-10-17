import 'package:ecommerce/utils/product_list.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Page",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              height: 500,
              width: 500,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,crossAxisSpacing: 2), itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.black
                      ),
                      child: Image.network(allProducts[index]['thumbnail']),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        children: [
                          Text(allProducts[index]['description']),
                          Text(allProducts[index]['brand']),
                        ],
                      ),
                    )
                  ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
