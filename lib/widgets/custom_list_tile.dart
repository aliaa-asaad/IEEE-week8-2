import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String? title;
  final String? time;

  const CustomListTile({this.title, this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title!,
        style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
      ),
      subtitle: Text(
        time!,
        style: TextStyle(color: Colors.white),
      ),
      trailing: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text(
                        'Delete',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content:
                          Text('Are you sure you want to delete this item?'),
                      actions: [
                        Text('Cancel'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Yes',
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ));
          },
          icon: Icon(
            Icons.delete_outline,
            color: Colors.white,
          )),
    );
  }
}
