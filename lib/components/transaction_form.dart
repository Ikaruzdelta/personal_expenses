import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  final TitleControler = TextEditingController();
  final valueControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            TextButton(
              child: const Text(
                'Nova Transação',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
