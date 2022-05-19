import 'package:flutter/material.dart';
import 'package:form_components/pages/zoom_image_slider/zoom_image_slider.dart';

class ZoomImageSliderState extends State<ZoomImageSlider> {
  double _sliderValue = 1;
  late TransformationController transformationController;

  @override
  void initState() {
    transformationController = TransformationController();
    //transformationController.addListener(() { })
    super.initState();
  }

  @override
  void dispose() {
    transformationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Zoom image with slider")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 500,
              padding: const EdgeInsets.all(8.0),
              child: InteractiveViewer(
                child: Transform.scale(
                  scale: _sliderValue,
                  child: Image.asset("assets/images/beija-flor.png"),
                ),
              ),
            ),
            const Text("Deslize para dar zoom na imagem"),
            Slider(
                max: 5,
                min: 0.1,
                value: _sliderValue,
                onChanged: (value) => setState(() {
                      _sliderValue = value;
                      transformationController.value = Matrix4.identity();
                    })),
          ],
        )));
  }
}
