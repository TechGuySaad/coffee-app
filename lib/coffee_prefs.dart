import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
    print('inc strength by 1');
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
    print('inc sugars by1 ');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        const Text('Strength: '),
        for (int i = 0; i < strength; i++)
          Image.asset('assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply),
        const Expanded(child: SizedBox()),
        FilledButton(
          onPressed: increaseStrength,
          child: const Text('+'),
          style: FilledButton.styleFrom(
              backgroundColor: Colors.brown, foregroundColor: Colors.white),
        ),
      ]),
      Row(children: [
        const Text('Sugars: '),
        sugars == 0 ? const Text('No sugars') : const Text(''),
        for (int i = 0; i < sugars; i++)
          Image.asset('assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply),
        const Expanded(child: SizedBox()),
        FilledButton(
          onPressed: increaseSugars,
          child: const Text('+'),
          style: FilledButton.styleFrom(
              backgroundColor: Colors.brown, foregroundColor: Colors.white),
        )
      ])
    ]);
  }
}
