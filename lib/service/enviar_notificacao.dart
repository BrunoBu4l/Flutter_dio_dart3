import 'package:dart_three/classes/pessoa.dart';
import 'package:dart_three/enum/tipo_notificacao.dart';
import 'package:dart_three/service/notificacao_interface.dart';
import 'package:dart_three/service/impl/notificacao_email.dart';
import 'package:dart_three/service/impl/notificacao_push_notification.dart';
import 'package:dart_three/service/impl/notificacao_sms.dart';

class EnviarNotificacao{
  NotificacaoInterface? notificacao; //sem instancia

  void notificar(Pessoa pessoa){
    switch(pessoa.getTipoNotificacao()){
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;      
    }
    if(notificacao != null){
      notificacao!.enviarNotificacao(pessoa);
    }else{
      print("Pessoa sem tipo de notificação!");
    }
    
  }
}