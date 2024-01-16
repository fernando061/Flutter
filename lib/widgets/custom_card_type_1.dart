import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Soy un titulo Soy un titulo Soy un titulo Soy un titulo Soy un titulo Soy un titulo Soy un titulo'),
          ),
          Row(
            children: [
              TextButton(
                onPressed: (){},
                child: const Text('cancel'),
                ),
                TextButton(
                onPressed: (){},
                child: const Text('Ok')
                )
            ],
          )
        ],
      ),
    );
  }
}