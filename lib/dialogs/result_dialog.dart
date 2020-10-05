import 'package:floor_calculator/models/result_model.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;

  ResultDialog(this.result);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Result'),
      content: Wrap(
        children: [
          // ListTile(
          //   title: Text('${result.amountPieces} pisos'),
          //   subtitle: Text('Quantidade de pisos'),
          //   dense: true,
          // ),
          // ListTile(
          //   title: Text('${result.amountFloor} pisos'),
          //   subtitle: Text('Quantidade de pisos para o rodapé'),
          //   dense: true,
          // ),
          // ListTile(
          //   title: Text('${result.amountPiecesAndFooter} pisos'),
          //   subtitle: Text('Quantidade total de pisos'),
          //   dense: true,
          // ),
          Divider(),
          ListTile(
            title: Text('${result.areaWithoutFooter.toStringAsFixed(2)} m²'),
            subtitle: Text('Metragem quadrada sem rodapé'),
          ),
          ListTile(
            title: Text('${result.areaWithFooter.toStringAsFixed(2)} m²'),
            subtitle: Text('Metragem quadrada com rodapé'),
          ),
          Divider(),
          ListTile(
            title: Text(
                '${result.priceCalculatorWithoutFooter.toStringAsFixed(2)} Reais'),
            subtitle: Text('Preço sem rodapé'),
          ),
          ListTile(
              title: Text(
                  '${result.priceCalculatorWithFooter.toStringAsFixed(2)} Reais'),
              subtitle: Text('Preço com rodapé')),
        ],
      ),
      actions: [
        FlatButton(
          child: const Text('CONTINUAR'),
          onPressed: () => _dispose(context),
        ),
      ],
    );
  }

  _dispose(context) {
    Navigator.of(context).pop();
  }
}
