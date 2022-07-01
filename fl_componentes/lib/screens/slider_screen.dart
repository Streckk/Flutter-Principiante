import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue=100;
  bool _sliderEnable=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.Primario,
              value: _sliderValue, 
              onChanged: _sliderEnable ?(value){
                  _sliderValue=value;
                  setState(() {
                    
                  });
              }:null
              
              ),

              // Checkbox(
              //   value: _sliderEnable, 
              //   onChanged: (value){
              //     _sliderEnable=value ?? true;
              //     setState(() {
                    
              //     });
              //   }
              //   ),

                CheckboxListTile(
                  title: const Text('Habilitar Slider'),
                  activeColor: AppTheme.Primario,
                  value: _sliderEnable, 
                  onChanged: (value)=>setState(() {
                    _sliderEnable = value ?? true;
                  })
                  ),
                  // Switch(
                  //   value: _sliderEnable, 
                  //   onChanged:(value)=>setState(() {
                  //   _sliderEnable = value;
                  // })
                  //   ),
                  SwitchListTile.adaptive(
                    title: const Text('Habilitar Slider'),
                  activeColor: AppTheme.Primario,
                  value: _sliderEnable, 
                  onChanged: (value)=>setState(() {
                    _sliderEnable = value;
                  })
                    ),

                  const   AboutListTile(),

              Image(
                image: NetworkImage('https://i.pinimg.com/originals/5c/ce/6c/5cce6cdadcf1a164a84b4bd3010bb209.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),
                const SizedBox(height: 50,)
          ],
        ),
      )
    );
  }
}