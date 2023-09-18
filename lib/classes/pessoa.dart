import 'package:dart_three/enum/tipo_notificacao.dart';

abstract class Pessoa {
  //Propriedades
  String _nome = "";//private
  String _endereco = "";
  String _email = "";
  String _celular = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  //construtor
  Pessoa(String name, String adress, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}){
    _nome = name;
    _endereco = adress;
    _tipoNotificacao = tipoNotificacao;
  }

  //métodos de encapsulamento
  void setNome(String name){
    _nome = name;
  }

  String getNome(){
    return _nome.toLowerCase();//tudo em minusculo
  }

  void setEndereco(String adress){
    _endereco = adress;
  }

  String getEndereco(){
    return _endereco.toUpperCase();//tudo maiusculo 
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao){
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao(){
    return _tipoNotificacao; 
  }

  String getEmail(){
    return _email.toLowerCase();//tudo em minusculo
  }
  void setEmail(String email){
    _email = email;
  }

  String getCelular(){
    return _celular;
  }
  void setCelular(String celular){
    _celular = celular;
  }

  void setToken(String token){
    _token = token;
  }

  String getToken(){
    return _token; 
 }


  //sobrescrita
  @override
  String toString() {
    return {"Nome": _nome, "Endereço": _endereco, "TipoNotificacao": _tipoNotificacao}.toString();
  }

}

