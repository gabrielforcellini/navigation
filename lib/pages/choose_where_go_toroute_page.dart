import 'package:flutter/material.dart';
import 'package:navigation/components/card.dart';
import 'package:navigation/mocks/blocos.dart';
import 'package:navigation/models/bloco.dart';

class ChooseWhereRoutePage extends StatefulWidget {
  const ChooseWhereRoutePage({super.key});

  @override
  State<ChooseWhereRoutePage> createState() => _ChooseWhereRoutePageState();
}

class _ChooseWhereRoutePageState extends State<ChooseWhereRoutePage> {
  Bloco? blocoIni;
  Bloco? blocoFim;

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        blocoIni == null
            ? 'Onde você está?'
            : blocoFim == null
                ? 'Para onde deseja ir?'
                : 'Clique no botão para iniciar',
      ),
    );

    final availableHeight = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    void onCardTap(Bloco bloco) {
      if (blocoIni == null && bloco != blocoFim) {
        blocoIni = bloco;
      } else if (blocoFim == null && bloco != blocoIni) {
        blocoFim ??= bloco;
      } else if (blocoIni == bloco) {
        blocoIni = null;
      } else if (blocoFim == bloco) {
        blocoFim = null;
      }
      setState(() {});
    }

    Color getCardColor(Bloco bloco) {
      if (blocoIni?.id == bloco.id) {
        return const Color.fromARGB(255, 33, 243, 198);
      } else if (blocoFim?.id == bloco.id) {
        return const Color.fromARGB(255, 54, 174, 244);
      }
      return Theme.of(context).colorScheme.primary;
    }

    var body = SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: availableHeight * 1,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: blocos.length,
              itemBuilder: (ctx, index) {
                final bloco = blocos[index];
                return GestureDetector(
                  onTap: () => onCardTap(bloco),
                  child: CustomCard(
                    bloco: bloco,
                    color: getCardColor(bloco),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation),
        onPressed: () => Navigator.pop(
            context, {'blocoIni': blocoIni, 'blocoFim': blocoFim}),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
