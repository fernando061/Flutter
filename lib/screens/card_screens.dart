import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e34d133d-90bd-4fe6-887f-6570ad10517d/dg6q577-e29ff167-8cd6-40ad-b211-4d681cb194ed.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UzNGQxMzNkLTkwYmQtNGZlNi04ODdmLTY1NzBhZDEwNTE3ZFwvZGc2cTU3Ny1lMjlmZjE2Ny04Y2Q2LTQwYWQtYjIxMS00ZDY4MWNiMTk0ZWQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.RvgXTuL5m2b8GZ2UNiMLxuy45axg8la4FjTZ_KrPAN4'),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b1282bf5-d6db-40bd-92c4-f39a9dbdbb49/dg7puvj-65239748-18b5-4c2e-935c-e5f513bb8f82.jpg/v1/fit/w_828,h_474,q_70,strp/should_we_dance_in_the_rain_by_jer0o0_dg7puvj-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzMyIiwicGF0aCI6IlwvZlwvYjEyODJiZjUtZDZkYi00MGJkLTkyYzQtZjM5YTlkYmRiYjQ5XC9kZzdwdXZqLTY1MjM5NzQ4LTE4YjUtNGMyZS05MzVjLWU1ZjUxM2JiOGY4Mi5qcGciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.vRIHIp7sgJmbexymXVxGSfBSAVR1Zslj-10MueUAKyU',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b1282bf5-d6db-40bd-92c4-f39a9dbdbb49/dg7puv3-9b1305b7-4fc0-48fd-97f4-a1c70c0d0653.jpg/v1/fit/w_828,h_474,q_70,strp/not_the_principals_office_by_jer0o0_dg7puv3-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzMyIiwicGF0aCI6IlwvZlwvYjEyODJiZjUtZDZkYi00MGJkLTkyYzQtZjM5YTlkYmRiYjQ5XC9kZzdwdXYzLTliMTMwNWI3LTRmYzAtNDhmZC05N2Y0LWExYzcwYzBkMDY1My5qcGciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.fIWKg3OFRICL6k1AcgVD9CcWA-FAT70HrZ3le1NF--8'),
          SizedBox(height: 10,),
          CustomCardType2( name:'Un hermoso paisaje' ,imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b1282bf5-d6db-40bd-92c4-f39a9dbdbb49/dg7jl7w-4e58592e-7427-4ba2-858c-08359aed52cd.jpg/v1/fit/w_828,h_474,q_70,strp/exam_tomorrow_by_jer0o0_dg7jl7w-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzMyIiwicGF0aCI6IlwvZlwvYjEyODJiZjUtZDZkYi00MGJkLTkyYzQtZjM5YTlkYmRiYjQ5XC9kZzdqbDd3LTRlNTg1OTJlLTc0MjctNGJhMi04NThjLTA4MzU5YWVkNTJjZC5qcGciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.mtVZrIYOospnUTxug9CbZS1Xa9iDEIcSDAs3aY0B0Ks'),
          
        ],
      )
    );
  }
}

