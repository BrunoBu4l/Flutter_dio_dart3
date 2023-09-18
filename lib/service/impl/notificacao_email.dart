import 'package:dart_three/classes/pessoa.dart';
import 'package:dart_three/service/notificacao_interface.dart';

class NotificacaoEmail implements NotificacaoInterface{
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Email para: ${pessoa.getNome()}");
  }
}