import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/doctor_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(const DoctorApp());
}
