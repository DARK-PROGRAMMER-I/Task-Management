import 'package:flutter/material.dart';
import 'package:task_sample_app/features/new_task/views/new_task_screen.dart';
import 'package:task_sample_app/features/sample_app_screen/views/sample_app_screen.dart';
import 'package:task_sample_app/features/single_task_screen/views/single_task_screen.dart';
import 'package:task_sample_app/features/task_preview/views/task_preview_screen.dart';
import 'package:task_sample_app/utils/error_screen.dart';
import 'navigation.dart';

class AppRoutes {
  static const String singleTaskScreen = '/singleTaskScreen';
  static const String sampleAppScreen = '/sampleAppScreen';
  static const String taskPreviewScreen = '/TaskPreviewScreen';
  static const String newTaskScreen = '/NewTaskScreen';


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case sampleAppScreen:
        return _buildRoute(const SampleAppScreen());
      case singleTaskScreen:
        return _buildRoute(const SingleTaskScreen());
      case taskPreviewScreen:
       return _buildRoute(const TaskPreviewScreen());
      case newTaskScreen:
        return _buildRoute(const NewTaskScreen());

      default:
        return unDefinedRoute();
    }
  }

  static unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              backgroundColor: Colors.white,
            ));
    return MaterialPageRoute(builder: (_) => const ErrorScreen());
  }

  static _buildRoute(Widget widget, {int? duration = 400}) {
    return forwardRoute(widget, duration);
  }

  static _buildNormalRoute(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}
