import 'package:navigation/models/grafo.dart';

class MontaGrafos {
  final int blocoAdministrativo = 0;
  final int blocoBiblioteca = 1;
  final int blocoOdontologia = 2;
  final int blocoEstudante = 3;
  final int blocoC = 4;
  final int blocoB = 5;
  final int blocoE = 6;
  final int blocoF = 7;
  final int blocoG = 8;
  final int blocoH = 9;
  final int blocoI = 10;
  final int blocoJ = 11;
  final int blocoK = 12;
  final int blocoL = 13;
  final int blocoM = 14;
  final int blocoP = 15;
  final int blocoR1 = 16;
  final int blocoR2 = 17;
  final int blocoS = 18;
  final int blocoT = 19;
  final int blocoQ = 20;
  final int conexao_1 = 21;
  final int conexao_2 = 22;
  final int conexao_3 = 23;
  final int conexao_4 = 24;
  final int conexao_5 = 25;
  final int conexao_6 = 26;
  final int conexao_7 = 27;
  final int conexao_8 = 28;
  final int conexao_9 = 29;
  final int conexao_10 = 30;
  final int conexao_11 = 31;
  final int conexao_12 = 32;
  final int conexao_13 = 33;
  final int conexao_14 = 34;
  final int conexao_15 = 35;
  final int conexao_16 = 36;
  final int conexao_17 = 37;
  final int conexao_18 = 38;
  final int conexao_19 = 39;
  final int conexao_20 = 40;
  final int conexao_21 = 41;
  final int conexao_22 = 42;
  final int conexao_23 = 43;
  final int conexao_24 = 44;
  final int conexao_25 = 45;
  final int conexao_26 = 46;
  final int conexao_27 = 47;
  final int conexao_28 = 48;
  final int conexao_29 = 49;
  final int conexao_30 = 50;
  final int conexao_31 = 51;
  final int conexao_32 = 52;
  final int conexao_33 = 53;
  final int conexao_34 = 54;
  final int conexao_35 = 55;
  final int conexao_36 = 56;
  final int conexao_37 = 57;
  final int conexao_38 = 58;
  final int conexao_39 = 59;
  final int conexao_40 = 60;
  final int conexao_41 = 61;
  final int conexao_42 = 62;
  final int conexao_43 = 63;
  final int conexao_44 = 64;
  final int conexao_45 = 65;
  final int conexao_46 = 66;
  final int conexao_47 = 67;
  final int conexao_48 = 68;
  final int conexao_49 = 69;
  final int conexao_50 = 70;
  final int conexao_51 = 71;
  final int conexao_52 = 72;
  final int conexao_53 = 73;
  final int conexao_54 = 74;
  final int conexao_55 = 75;
  final int conexao_56 = 76;
  final int conexao_57 = 77;
  final int conexao_58 = 78;
  final int conexao_59 = 79;
  final int conexao_60 = 80;
  final int conexao_61 = 81;
  final int conexao_62 = 82;
  final int conexao_63 = 83;
  final int conexao_64 = 84;
  final int conexao_65 = 85;
  final int conexao_66 = 86;
  final int conexao_67 = 87;
  final int blocoXXIA = 121;
  final int blocoXXIB = 122;
  final int blocoXXIC = 123;
  final int blocoApoio = 124;
  final int blocoZ = 125;
  final int atelieArq = 126;
  final int colegioUnesc = 157;
  final int quadrasPoliesportivas = 158;
  final int complexoEsp = 159;
  final int ginasio = 160;
  final int restaurante = 161;
  final int clinicasIntegradas = 162;
  final int blocoNO = 163;
  final int conexao_131 = 164;
  final int conexao_132 = 165;
  final int conexao_133 = 166;

  /// Define as arestas (caminhos) entre os vértices (blocos)
  Grafo montaArestas(Grafo grafo) {
    grafo.criaAresta(conexao_1, conexao_2, 20);
    grafo.criaAresta(conexao_2, conexao_3, 110);
    grafo.criaAresta(conexao_2, blocoAdministrativo, 20);
    grafo.criaAresta(conexao_2, conexao_7, 80);
    grafo.criaAresta(blocoAdministrativo, conexao_6, 50);
    grafo.criaAresta(conexao_3, conexao_5, 70);
    grafo.criaAresta(conexao_5, conexao_6, 70);
    grafo.criaAresta(conexao_5, conexao_11, 88);
    grafo.criaAresta(conexao_6, blocoBiblioteca, 44);
    grafo.criaAresta(conexao_7, conexao_8, 13);
    grafo.criaAresta(conexao_8, conexao_67, 13);
    grafo.criaAresta(conexao_8, conexao_65, 70);
    grafo.criaAresta(blocoBiblioteca, conexao_10, 44);
    grafo.criaAresta(conexao_10, conexao_11, 70);
    grafo.criaAresta(conexao_10, conexao_12, 17);
    // grafo.criaAresta(conexao_11, conexao_16, 2);
    grafo.criaAresta(conexao_11, conexao_14, 45);
    grafo.criaAresta(conexao_12, conexao_13, 55);
    // Quando está no 12 está na frente do bloco Estudante, porém tem rotas pelos outros lados.
    grafo.criaAresta(conexao_12, blocoEstudante, 5);
    grafo.criaAresta(conexao_13, conexao_14, 90);
    grafo.criaAresta(conexao_13, conexao_25, 20);
    // Quando está no 25 está na frente do bloco XXIA, porém tem rotas pelos outros lados.
    grafo.criaAresta(conexao_25, blocoXXIA, 1);
    grafo.criaAresta(conexao_132, blocoXXIA, 20);
    grafo.criaAresta(conexao_14, conexao_131, 45);
    grafo.criaAresta(conexao_131, conexao_22, 45);
    grafo.criaAresta(conexao_22, conexao_23, 20);
    grafo.criaAresta(conexao_23, conexao_24, 90);
    grafo.criaAresta(conexao_24, blocoApoio, 5);
    grafo.criaAresta(conexao_24, conexao_26, 20);
    // Quando está no 26 ou 27 está na frente do bloco XXIB
    grafo.criaAresta(conexao_26, blocoXXIB, 20);
    grafo.criaAresta(conexao_132, blocoXXIB, 2);
    grafo.criaAresta(conexao_26, conexao_36, 102);
    grafo.criaAresta(conexao_34, conexao_35, 50);
    grafo.criaAresta(conexao_34, conexao_64, 40);
    // Quando está no 132 está na rota na frente do bloco XXIC
    grafo.criaAresta(conexao_132, blocoXXIC, 20);
    grafo.criaAresta(conexao_35, conexao_132, 110);
    grafo.criaAresta(conexao_35, conexao_36, 70);
    // Quando está no 36 está na frente do bloco Z
    grafo.criaAresta(conexao_36, blocoZ, 5);
    grafo.criaAresta(conexao_36, conexao_37, 30);
    // Quando está no 37 está na frente do bloco Z (outra rota)
    grafo.criaAresta(conexao_37, blocoZ, 5);
    grafo.criaAresta(conexao_37, conexao_38, 33);
    // Quando está no 38 está na frente do bloco Q
    grafo.criaAresta(conexao_38, blocoQ, 5);
    grafo.criaAresta(conexao_38, conexao_39, 27);
    // Quando está no 39 está na frente do bloco P (rota lateral)
    grafo.criaAresta(conexao_39, blocoP, 5);
    // Quando está no 40 está na frente do bloco P
    grafo.criaAresta(blocoNO, blocoP, 5);
    grafo.criaAresta(blocoNO, conexao_41, 33);
    grafo.criaAresta(conexao_41, conexao_42, 33);
    grafo.criaAresta(conexao_42, conexao_43, 33);
    grafo.criaAresta(conexao_42, conexao_62, 28);
    // Quando está no 43 está na frente do bloco M/K
    grafo.criaAresta(conexao_43, blocoM, 5);
    grafo.criaAresta(conexao_43, blocoK, 5);
    grafo.criaAresta(conexao_43, conexao_44, 33);
    // grafo.criaAresta(conexao_43, conexao_62, 2);
    // Quando está no 44 está na frente do bloco J
    grafo.criaAresta(conexao_44, blocoJ, 5);
    grafo.criaAresta(conexao_44, conexao_45, 33);
    // Quando está no 45 está na frente do bloco G
    grafo.criaAresta(conexao_45, blocoG, 5);
    grafo.criaAresta(conexao_45, conexao_46, 33);
    grafo.criaAresta(conexao_45, conexao_58, 28);
    // Quando está no 46 está na frente do bloco H
    grafo.criaAresta(conexao_46, blocoH, 5);
    grafo.criaAresta(conexao_46, conexao_47, 33);
    grafo.criaAresta(conexao_47, conexao_133, 33);
    grafo.criaAresta(conexao_47, conexao_55, 28);
    // Quando está no 48 está na frente do bloco Atelie Arq.
    grafo.criaAresta(conexao_48, atelieArq, 5);
    grafo.criaAresta(conexao_48, conexao_49, 33);
    grafo.criaAresta(conexao_48, conexao_53, 28);
    grafo.criaAresta(conexao_48, conexao_133, 33);
    // Quando está no 49 está na frente do bloco Atelie Arq. e do Bloco B
    grafo.criaAresta(conexao_49, blocoB, 5);
    grafo.criaAresta(conexao_49, atelieArq, 5);
    grafo.criaAresta(conexao_49, conexao_50, 33);
    grafo.criaAresta(conexao_50, conexao_51, 28);
    // Quando está no 51 está na frente do bloco C
    grafo.criaAresta(conexao_51, blocoC, 5);
    grafo.criaAresta(conexao_51, conexao_52, 33);
    // Quando está no 52 está atrás do bloco B
    grafo.criaAresta(conexao_52, blocoB, 5);
    grafo.criaAresta(conexao_52, conexao_53, 33);
    grafo.criaAresta(conexao_53, conexao_54, 33);
    // Quando está no 54 está na frente do bloco E/F
    grafo.criaAresta(conexao_54, blocoE, 5);
    grafo.criaAresta(conexao_54, blocoF, 5);
    grafo.criaAresta(conexao_54, conexao_55, 33);
    grafo.criaAresta(conexao_55, conexao_56, 33);
    grafo.criaAresta(conexao_56, conexao_57, 33);
    grafo.criaAresta(conexao_56, conexao_65, 41);
    // Quando está no 57 está atrás do bloco H
    grafo.criaAresta(conexao_57, blocoH, 5);
    grafo.criaAresta(conexao_57, conexao_58, 33);
    // Quando está no 58 está na frente do bloco I
    grafo.criaAresta(conexao_58, blocoI, 5);
    grafo.criaAresta(conexao_58, conexao_59, 33);
    // Quando está no 59 está atrás do bloco J
    grafo.criaAresta(conexao_59, blocoJ, 5);
    grafo.criaAresta(conexao_59, conexao_60, 33);
    grafo.criaAresta(conexao_59, conexao_64, 41);
    // Quando está no 60 está atrás do bloco L/M
    grafo.criaAresta(conexao_60, blocoL, 5);
    grafo.criaAresta(conexao_60, blocoM, 5);
    grafo.criaAresta(conexao_60, conexao_61, 33);
    grafo.criaAresta(conexao_61, conexao_62, 33);
    grafo.criaAresta(conexao_61, conexao_34, 41);
    grafo.criaAresta(conexao_62, conexao_63, 33);
    // Quando está no 63 está atrás do bloco N/O
    grafo.criaAresta(conexao_63, blocoNO, 5);
    grafo.criaAresta(conexao_64, conexao_65, 40);
    grafo.criaAresta(conexao_65, conexao_66, 13);
    grafo.criaAresta(conexao_66, conexao_6, 80);
    // Quando está no 67 está atrás do bloco C
    grafo.criaAresta(conexao_67, blocoC, 5);
    grafo.criaAresta(conexao_67, conexao_52, 13);
    // conexão 133 com bloco E
    grafo.criaAresta(conexao_133, blocoE, 5);
    return grafo;
  }
}
