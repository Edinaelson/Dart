import 'package:nordbank/Cliente.dart';
import 'package:nordbank/ContaCorrente.dart';

void main(List<String> arguments) {
  ContaCorrente paulo = ContaCorrente();
  paulo.titular.nome = "Paulo";
  paulo.titular.cpf = "043.234.566-77";
  paulo.titular.profissao = "Programador";
  paulo.conta = 33;

  print("Nome: ${paulo.titular.nome}");
  print("cpf: ${paulo.titular.cpf}");
  print("Profissão: ${paulo.titular.profissao}");
}


