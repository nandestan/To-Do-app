import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tdBGColor,
        appBar: _buildAppbar(),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child:  Column(
                children: [
                    searchBar(),
                ],
            ),
        )
    );
  }

  Widget searchBar(){
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: const TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(
                    Icons.search, 
                    color: tdBlack, 
                    size: 20,
                ),
                prefixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    minWidth: 25,
                ),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: tdGrey),
            ),
        ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
          backgroundColor: tdBGColor,
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const Icon(
                  Icons.menu,
                  color: tdBlack,
                  size: 30,
              ),
              SizedBox(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/avatar.jpg'),
                  ),
              ),
          ]),
      );
  }
}