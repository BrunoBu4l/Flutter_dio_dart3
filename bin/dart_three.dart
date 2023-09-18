
//import 'package:dart_three/classes/Pessoa.dart';
import 'package:dart_three/classes/pessoa_fisica.dart';
import 'package:dart_three/classes/pessoa_juridica.dart';
import 'package:dart_three/enum/tipo_notificacao.dart';
import 'package:dart_three/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  //var p1 = new Pessoa("Bruno","rua 20 de março"); //objeto
  //p1.setNome("Bruno");
  //p1.setEndereco("rua 20 de março");
  //print(p1);

  var pf1 = PessoaFisica("Bruno", "Rua 20", "14785236900", 
                          tipoNotificacao: TipoNotificacao.PUSH_NOTIFICATION);
  print(pf1);

  var pj1 = PessoaJuridica("Alvin", "Rua 58", "12457858441", tipoNotificacao: TipoNotificacao.EMAIL);
  print(pj1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pf1);
  enviarNotificacao.notificar(pj1);
}


