import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gauge Chart"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 2000,
            axes: <RadialAxis>[
              RadialAxis(
                maximum: 40,
                interval: 2,
                labelsPosition: ElementsPosition.outside,
                ranges: <GaugeRange>[
                  GaugeRange(
                    startValue: 0,
                    endValue: 18.4,
                    color: Colors.amber,
                  ),
                  GaugeRange(
                    startValue: 18.5,
                    endValue: 24.9,
                    color: Colors.green,
                  ),
                  GaugeRange(
                    startValue: 25,
                    endValue: 40,
                    color: Colors.red,
                  ),
                ],
                pointers: const <GaugePointer>[
                  NeedlePointer(
                    value: 22.5,
                    needleEndWidth: 5,
                    enableAnimation: true,
                  ),
                ],
                annotations: const <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Text(
                      '22.5',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    angle: 90,
                    positionFactor: 0.5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
