import 'package:flutter/material.dart';
import 'package:mobillie/intro.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://bzcduflkayuqfmhedhcj.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ6Y2R1ZmxrYXl1cWZtaGVkaGNqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyODIxNjcsImV4cCI6MjAzMzg1ODE2N30.blSy4yFjQZEnBVjLlx9jMHbjr0t64X6G_BIQSjFP78M',
  );
  runApp( MyApp());
}

final supabase = Supabase.instance.client;


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionPage(),
    );
  }
}
