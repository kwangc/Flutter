import 'package:flutter/material.dart';
import 'package:flutterapp/device_details/device_details_bloc.dart';
import 'package:flutterapp/device_details/view/button_view.dart';
import 'package:flutterapp/device_details/view/logs_container_view.dart';
import 'dart:async' show Future;
import 'dart:typed_data' show ByteData;
import 'package:flutter/services.dart' show rootBundle;

class AutoTestView extends StatelessWidget {
  final DeviceDetailsBloc _deviceDetailsBloc;

  AutoTestView(this._deviceDetailsBloc);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: <Widget>[
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: _createAutoTestControlPanel(),
          ),
        ),
        Expanded(
          flex: 9,
          child: LogsContainerView(_deviceDetailsBloc.logs),
        )
      ]),
    );
  }

  Widget _createAutoTestControlPanel() {
    return Row(
      children: <Widget>[
        ButtonView("Start AGPS transfer", action: _startAutoTest),
      ],
    );
  }

  void _startAutoTest() {
    Future<ByteData> mgaOffline = rootBundle.load('assets/mgaoffline.ubx');
    _deviceDetailsBloc.startAutoTest();
  }
}
