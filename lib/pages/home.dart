import 'package:fisioapp/theme/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(children: [
                  AppImages.homeImage,
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: const EdgeInsets.only(bottom: 45),
                    child: const Text(
                      'Hey Rafael',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(bottom: 50),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                          child: Text(
                        "Let's start your treatment? :)",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5,
                      ))),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: const Text('Start',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          onPressed: () {})),
                ]))
          ],
        );
  }
}