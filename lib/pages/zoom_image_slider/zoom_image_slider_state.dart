import 'package:flutter/material.dart';
import 'package:form_components/pages/zoom_image_slider/zoom_image_slider.dart';

class ZoomImageSliderState extends State<ZoomImageSlider> {
  double _sliderValue = 0;
  late TransformationController transformationController;

  @override
  void initState() {
    transformationController = TransformationController();
    super.initState();
  }

  @override
  void dispose() {
    transformationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Zoom image with slider")),
        body: Center(
            child: Column(
          children: [
            Slider(value: _sliderValue, onChanged: (value) => {}),
            InteractiveViewer(
              child: Image.asset("assets/images/beija-flor.png"),
              minScale: 0.1,
              maxScale: 5,
            )
          ],
        )));
  }
}
