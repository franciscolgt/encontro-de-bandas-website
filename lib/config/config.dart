import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

bool isLaptop(BuildContext context) => MediaQuery.of(context).size.width > 880;

FirebaseAnalytics analytics = FirebaseAnalytics.instance;
