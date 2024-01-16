import 'dart:io';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
           actions: [
               TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar',style: TextStyle(color: Colors.red))),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok'))
          ],
        );
      });
  }


  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar',style: TextStyle(color: Colors.red))),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok'))
          ],
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
           style: ElevatedButton.styleFrom(
             backgroundColor: Colors.indigo,
             shape: const StadiumBorder(),
             elevation: 0
           ),
           onPressed:() => Platform.isAndroid
            ? displayDialogAndroid(context)
            : displayDialogIOS(context),
           child: const Padding(
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
             child: Text('Mostrar alerta',style: TextStyle(fontSize: 16,color: AppTheme.textColor)),
           ),
         )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        child: const Icon(Icons.close,color:AppTheme.textColor ,),
        
      ),
    );
  }
}