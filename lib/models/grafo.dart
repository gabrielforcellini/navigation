class Grafo {
  static const int indefinido = -1;
  late List<List<int>> vertices;

  /// Construtor padrão.
  /// @param numVertices
  ///          Número total de vertices deste grafo.
  Grafo(int numVertices) {
    vertices = List.generate(numVertices, (_) => List.filled(numVertices, 0));
  }

  /// Cria uma aresta no grafo.
  /// @param noOrigem
  ///          Nó origem
  /// @param noDestino
  ///          Nó destino
  /// @param peso
  ///          Distância
  void criaAresta(int noOrigem, int noDestino, int peso) {
    if (peso >= 1) {
      vertices[noOrigem][noDestino] = peso;
      vertices[noDestino][noOrigem] = peso;
    } else {
      print(
          'O peso do nó origem [$noOrigem] para o nó destino [$noDestino] não pode ser negativo [$peso]');
    }
  }

  /// @return O custo entre os dois vertices.
  int getCusto(int noOrigem, int noDestino) {
    if (noOrigem >= vertices.length) {
      throw RangeError('Nó origem [$noOrigem] não existe no grafo');
    } else if (noDestino >= vertices.length) {
      throw RangeError('Nó destino [$noDestino] não existe no grafo');
    } else {
      return vertices[noOrigem][noDestino];
    }
  }

  List<int> getVizinhos(int no) {
    List<int> vizinhos = [];
    for (int i = 0; i < vertices[no].length; i++) {
      if (vertices[no][i] > 0) {
        vizinhos.add(i);
      }
    }
    return vizinhos;
  }

  int getMaisProximo(List<int> listaCusto, Set<int> listaNaoVisitados) {
    double minDistancia = double.maxFinite;
    int noProximo = 0;

    for (var i in listaNaoVisitados) {
      if (listaCusto[i] < minDistancia) {
        minDistancia = listaCusto[i].toDouble();
        noProximo = i;
      }
    }
    return noProximo;
  }

  List<int> caminhoMinimo(int noOrigem, int noDestino) {
    List<int> custo = List.filled(vertices.length, 0);
    List<int> antecessor = List.filled(vertices.length, 0);
    Set<int> naoVisitados = {};

    // Custo inicial do noOrigem é ZERO.
    custo[noOrigem] = 0;

    // Define que todos os outros vertices, diferentes do nó origem têm peso infinito.
    for (int v = 0; v < vertices.length; v++) {
      if (v != noOrigem) {
        custo[v] =
            0x7FFFFFFFFFFFFFFF; // Simboliza o infinito. https://stackoverflow.com/questions/50429660/is-there-a-constant-for-max-min-int-double-value-in-dart
      }
      antecessor[v] = indefinido;
      naoVisitados.add(v);
    }

    while (naoVisitados.isNotEmpty) {
      // Busca o vértice não visitado mais próximo.
      int noMaisProximo = getMaisProximo(custo, naoVisitados);

      // Retira da lista.
      naoVisitados.remove(noMaisProximo);

      for (var vizinho in getVizinhos(noMaisProximo)) {
        int custoTotal =
            custo[noMaisProximo] + getCusto(noMaisProximo, vizinho);
        if (custoTotal < custo[vizinho]) {
          custo[vizinho] = custoTotal;
          antecessor[vizinho] = noMaisProximo;
        }
      }

      if (noMaisProximo == noDestino) {
        return caminhoMaisProximo(antecessor, noMaisProximo);
      }
    }

    return [];
  }

  List<int> caminhoMaisProximo(List<int> antecessor, int noMaisProximo) {
    List<int> caminho = [noMaisProximo];
    while (antecessor[noMaisProximo] != indefinido) {
      caminho.add(antecessor[noMaisProximo]);
      noMaisProximo = antecessor[noMaisProximo];
    }

    caminho = caminho.reversed.toList();
    return caminho;
  }
}
