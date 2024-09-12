class Bagagem {
  String tipo;
  double peso;

  // Construtor com parâmetros nomeados e obrigatórios
  Bagagem({required this.tipo, required this.peso});

  String detalhes() {
    return 'Tipo: $tipo, Peso: $peso kg';
  }
}

// Função que cria uma instância de Bagagem e a retorna
Bagagem obterBagagem({required String tipo, required double peso}) {
  return Bagagem(tipo: tipo, peso: peso);
}

main() {
  // Chamando a função para obter uma bagagem
  Bagagem minhaBagagemm = obterBagagem(tipo: 'Mala de Viagem', peso: 23.5);

  // Imprimindo os detalhes da bagagem
  print(minhaBagagemm.detalhes());
}
