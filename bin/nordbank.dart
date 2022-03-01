import 'package:nordbank/Cliente.dart';
import 'package:nordbank/ContaCorrente.dart';

void main(List<String> arguments) {
  ContaCorrente contapaulo = ContaCorrente();

  Cliente paulo = Cliente();

  paulo.nome = "Paulo";
  paulo.cpf = "043.234.566-77";
  paulo.profissao = "Programador";

  contapaulo.titular = paulo;

  print("Nome: ${paulo.nome}");
  print("cpf: ${paulo.cpf}");
  print("Profissão: ${paulo.profissao}");

  print("Titular: ${contapaulo.titular.nome}");

  ContaCorrente contatiago = ContaCorrente();
  Cliente tiago = Cliente()
    ..nome = "Tiago"
    ..cpf = "054.532.432-75"
    ..profissao = "Programado java";

  contatiago.titular = tiago;

  print("Titular: ${contatiago.titular.nome}");
}
