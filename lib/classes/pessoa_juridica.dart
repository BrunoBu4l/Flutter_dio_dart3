import 'package:dart_three/classes/pessoa.dart';
import 'package:dart_three/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa{

  String _cnpj = "";

  //construtor
  PessoaJuridica(String name, String adress, String cnpj, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
  :super(name, adress, tipoNotificacao: tipoNotificacao){
    _cnpj = cnpj;
  }

  void setcnpj(String cnpj){
    _cnpj = cnpj;
  }

  String getcnpj(){
    return _cnpj;//tudo maiusculo 
  }

  //sobrescrita
  @override
  String toString() {
    return {
      "Nome": getNome(), 
      "Endereço": getEndereco(), 
      "CNPJ": _cnpj, 
      "TipoNotificacao": getTipoNotificacao()
    }.toString();
  }

}

