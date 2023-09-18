import 'package:dart_three/classes/pessoa.dart';
import 'package:dart_three/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa{
  //Propriedades
  String _cpf = ""; //private

  //construtor
  PessoaFisica(String name, String adress, String cpf, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
    : super(name, adress, tipoNotificacao: tipoNotificacao){
    _cpf = cpf;
  }

  void setCpf(String cpf){
    _cpf = cpf;
  }

  String getCpf(){
    return _cpf;//tudo maiusculo 
  }

  //sobrescrita
  @override
  String toString() {
    return {
      "Nome": super.getNome(), 
      "Endereço": super.getEndereco(), 
      "CPF": _cpf, 
      "TipoNotificacao": getTipoNotificacao()
    }.toString();
  }

}

