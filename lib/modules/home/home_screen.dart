
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: Icon(
          Icons.menu
        ),
        title: Text(
          'First App'
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            onPressed: (){
              print('Notification Clicked!');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: (){
              print('Search Clicked!');
            },

          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0),
                  ),

                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://cdn.mos.cms.futurecdn.net/XsbvTN6PRi6PZtgEGvRsiE-970-80.jpg.webp',
                      ),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: 200.0,
                      color: Colors.black.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Text(
                        'New York, SOL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
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