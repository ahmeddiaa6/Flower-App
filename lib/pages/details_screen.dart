// ignore_for_file: prefer_const_constructors
import 'package:app/model/item.dart';
import 'package:app/shared/appbar.dart';
import 'package:app/shared/constants_colors.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  Item product;
  // ignore: use_key_in_widget_constructors
  DetailsScreen({required this.product});
  //  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
          actions: const [
          ProductsAndPrice(),
        ],
          backgroundColor: appbarGreen,
          title: Text(
            "Details Screen",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.product.imgPath),
              SizedBox(
                height: 11,
              ),
              Text(
                "\$  ${widget.product.price}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 129, 129),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "New",
                        style: TextStyle(fontSize: 15),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 66,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.edit_location,
                        size: 26,
                        color: Color.fromARGB(168, 3, 65, 27),
                        // color: Color.fromARGB(255, 186, 30, 30),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        widget.product.location,
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Details : ",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.",
                style: TextStyle(
                  fontSize: 18,
                ),
                maxLines: isShowMore ? 3 : null,
                overflow: TextOverflow.fade,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isShowMore = !isShowMore;
                    });
                  },
                  child: Text(
                    isShowMore ? "Show more" : "Show less",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ))
            ],
          ),
        ));
  }
}
