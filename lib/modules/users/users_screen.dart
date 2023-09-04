import 'package:flutter/material.dart';
import 'package:project_01/models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      name: 'Ragnar Lothbrock',
      phone: '+1 6523321843',
      id: 1,
    ),
    UserModel(
      name: 'Utred Ragrnarson',
      phone: '+1 6523315612',
      id: 2,
    ),
    UserModel(
      name: 'Floki',
      phone: '+1 5613215243',
      id: 3,
    ),
    UserModel(
      name: 'Lagertha Lothbrock',
      phone: '+1 6545561843',
      id: 4,
    ),
    UserModel(
      name: 'Helda Floki',
      phone: '+1 6511315843',
      id: 5,
    ),
    UserModel(
      name: 'Traitor Lothbrock',
      phone: '+1 6153321843',
      id: 6,
    ),
    UserModel(
      name: 'Ragnar Lothbrock',
      phone: '+1 6523321843',
      id: 1,
    ),
    UserModel(
      name: 'Utred Ragrnarson',
      phone: '+1 6523315612',
      id: 2,
    ),
    UserModel(
      name: 'Floki',
      phone: '+1 5613215243',
      id: 3,
    ),
    UserModel(
      name: 'Lagertha Lothbrock',
      phone: '+1 6545561843',
      id: 4,
    ),
    UserModel(
      name: 'Helda Floki',
      phone: '+1 6511315843',
      id: 5,
    ),
    UserModel(
      name: 'Traitor Lothbrock',
      phone: '+1 6153321843',
      id: 6,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, Index) => buildUserItem(users [Index]),
          separatorBuilder: (context, Index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),

    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 25.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
