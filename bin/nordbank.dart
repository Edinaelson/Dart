import 'package:nordbank/Cliente.dart';
import 'package:nordbank/ContaCorrente.dart';

void main(List<String> arguments) {
  ContaCorrente contapaulo = ContaCorrente(123, 5990);

  Cliente paulo = Cliente();

  paulo.nome = "Paulo";
  paulo.cpf = "043.234.566-77";
  paulo.profissao = "Programador";

  contapaulo.titular = paulo;
  print("--------------------------------------");
  print("Nome: ${paulo.nome}");
  print("cpf: ${paulo.cpf}");
  print("Profissão: ${paulo.profissao}");
  print("Titular: ${contapaulo.titular.nome}");
  print("--------------------------------------");

  ContaCorrente contatiago = ContaCorrente(-123, 6432);

  Cliente tiago = Cliente()
    ..nome = "Tiago"
    ..cpf = "054.532.432-75"
    ..profissao = "Programado java";

  contatiago.titular = tiago;

  print("Titular: ${contatiago.titular.nome}");
  print("conta: ${contatiago.saldo}");
  print("agencia: ${contatiago.agencia}");
  print("--------------------------------------");
  print("total de contas criadas: ${ContaCorrente.totaldecontas}");
  print("--------------------------------------");
}
