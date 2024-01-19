import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled ? (value){
              setState(() {
                _sliderValue = value;
              });
            }
            : null
        ),
        // Checkbox(value: _sliderEnabled, onChanged: (value){
        //   setState(() {
        //     _sliderEnabled= value ?? true;
            
        //   });
        // }),
        // Switch(
        //   value: _sliderEnabled, 
        //   onChanged: (value) => setState(() { _sliderEnabled = value;})
        // ),
        CheckboxListTile(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnabled, 
          onChanged: (value) => setState(() { _sliderEnabled = value ?? true; })
        ),
        SwitchListTile.adaptive( 
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnabled, 
          onChanged:  (value) => setState(() { _sliderEnabled = value; })
        ),
        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
               image: NetworkImage('https://i.pinimg.com/736x/e3/0a/41/e30a41258a2cbd0f946b3d6c53a03a92.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),
            ),
          ),
            const SizedBox(height: 50,)
        ],
      ),
    );
  }
}