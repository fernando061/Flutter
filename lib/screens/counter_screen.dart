



import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase(){
    setState(() => counter++);
  }
  void cero(){
    setState(() => counter=0);
  }
  void decrease(){
    setState(() => counter--);
  }
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    
    return  Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0.0,
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numero de Clicks', style: fontSize30),
            Text('$counter' , style: fontSize30),
          ],
         ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        ceroFn: cero,
        decreaseFn: decrease,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function ceroFn;
  
  const CustomFloatingActions({
    super.key, required this.increaseFn, required this.decreaseFn, required this.ceroFn,
  });

  @override
  Widget build(BuildContext context) {


    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:   [
        FloatingActionButton(
          child: const  Icon(Icons.exposure_plus_1_outlined),
          onPressed:()=> increaseFn(),
        ),
        FloatingActionButton(
          child: const  Icon(Icons.exposure_outlined),
          onPressed:()=> ceroFn(),
        ),
        FloatingActionButton(
          child: const  Icon(Icons.exposure_minus_1_outlined),
          onPressed:() => decreaseFn(),
        ),
      
      ],
    );
  }
}