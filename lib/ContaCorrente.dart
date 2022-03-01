import 'Cliente.dart';

class ContaCorrente {
  ContaCorrente(int agencia, this.conta) {
    if (agencia > 0) _agencia = agencia;
    totaldecontas++;
  }

  static int totaldecontas = 0;

  Cliente titular = Cliente();
  int _agencia = 145;
  int conta = 22;
  double _saldo = 20.5;
  double chequeespecial = 100.0;

  get agencia => _agencia;
  set agencia(novaagencia) {
    if (novaagencia > 0) {
      _agencia = novaagencia;
    } else {
      print("valor invalido");
    }
  }

  get saldo {
    return _saldo;
  }

  set definirsaldo(double saldoNovo) {
    if (_saldo > chequeespecial) {
      _saldo = saldoNovo;
    } else {
      print("Saldo menor que cheque especial!");
    }
  }

  bool verificaSaldo(double valor) {
    if (_saldo - valor < chequeespecial) {
      print("Saldo insuficiente ");
      return false;
    } else {
      print("movimento $valor reais");
    }
    return true;
  }

  bool transferencia(double valortrasnferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valortrasnferencia)) {
      return false;
    } else {
      _saldo -= valortrasnferencia;
      contaDestino.deposito(valortrasnferencia);
      return false;
    }
  }

  double deposito(double valordeposito) {
    _saldo += valordeposito;
    return _saldo;
  }
}
