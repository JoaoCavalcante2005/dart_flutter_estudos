import 'package:flutter/material.dart';
import 'package:alura/models/transferencia.dart';
import 'package:alura/screens/transferencia/formulario.dart';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  @override
  State<StatefulWidget> createState() {
    debugPrint('createState funcionando');
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Transferencias',
        ),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),

      // aqui é o botao de para ir à tela de criar transferenciae
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((valorRecebido) {
            // valorRecebido é a transferencia recebida
            if (valorRecebido != null) {
              debugPrint('==========   valor recebido é : $valorRecebido');
              setState(() {
                widget._transferencias.add(valorRecebido);
              });
            }
          });
        },
      ),
    );
  }
}

//     coisas transferencias
class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('O VALOR DE ' + _transferencia.valor.toString() + ' REAIS'),
        subtitle: Text(
            'FOI FEITO PELA CONTA ' + _transferencia.numeroConta.toString()),
      ),
    );
  }
}
