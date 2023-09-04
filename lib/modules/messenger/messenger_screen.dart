import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18.0,
                backgroundImage: NetworkImage('https://i1.wp.com/9jamo.com/wp-content/uploads/2021/04/daxx.jpg'),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'Chats',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.grey[200],
            child: Icon(
              Icons.camera_alt,
              size: 18.0,
              color: Colors.black,
            ),
          ),),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[200],
              child: Icon(
                Icons.edit,
                size: 18.0,
                color: Colors.black,
              ),
            ),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 14.0,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
                padding: EdgeInsets.all(5.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 80.0,
                child: ListView.separated (
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 25.0,
                  ) ,
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem() ,
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
                itemCount: 15),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://i1.wp.com/9jamo.com/wp-content/uploads/2021/04/daxx.jpg'),
          ),
          Container(
            width: 25.0,
            height: 15.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.greenAccent[100],
              border: Border.all(color: Colors.black,),
              borderRadius: BorderRadius.circular(15.0),
            ),
            // decoration: new BoxDecoration(
            //   shape: BoxShape.circle,
            //   border: BorderRadius.all(
            //     color: Colors.white,
            //     width: 3.0,
            //   ),
            // ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 1.8,
              end: 3.0,
            ),
            child: Text(
              '13m',
              style: TextStyle(
                fontSize: 9.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rá Gnár',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'You: m9wd nta hahaaha yallh d\'accord anmlaga',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  'Oct 19',
                  style: TextStyle(
                      color: Colors.grey[700]
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget buildStoryItem() => Container(
    width: 50.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://i1.wp.com/9jamo.com/wp-content/uploads/2021/04/daxx.jpg'),
              ),
            ),
            Container(
              child: CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.green,
              ),
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(
                  color: Colors.white,
                  width: 3.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Expanded(
          child: Text(
            'Rá Gnár',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );

}
