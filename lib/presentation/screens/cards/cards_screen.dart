
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


const cards =<Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},

];


class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body:const _ButtonView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
         onPressed: (){
          context.pop();
         }
        ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {
    return _CardsView();
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => _CardType1(label: card['label'], elevation: card['elevation'])
          ),
                  ...cards.map(
            (card) => _CardType1(label: card['label'], elevation: card['elevation'])
          ),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({
    required this.label, 
    required this.elevation
  });
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child:  Column(
          children: [
           Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon:const Icon(Icons.more_vert_outlined),
              onPressed: (){},
              ),
            ),      
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label)
            )              
          ],),
        ),
    );
  }
}