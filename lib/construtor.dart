import 'package:flutter/material.dart';
import 'dart:ui';

class cadastroBagagem {
  String numberFlight;
  String airlineName;
  String depDate;
  String arrDate;
  String depTime;
  String arrTime;
  String iataDep;
  String iataArr;
  String cityDep;
  String cityArr;
  String durationFlight;
  String ownerCadaster;
  String ownerBagage;
  String imageTicketPassanger;
  String bagageType;
  String imagesBagage;
  String videoBagage;
  String inventory;
  bool termsConditions;
  String imageDispatchTicket;
  String wight_bagage;
  String docNumber;

  //criando construtor nomeado
  cadastroBagagem({
    required this.numberFlight,
    required this.airlineName,
    required this.depDate,
    required this.arrDate,
    required this.depTime,
    required this.arrTime,
    required this.iataDep,
    required this.iataArr,
    required this.cityDep,
    required this.cityArr,
    required this.durationFlight,
    required this.ownerCadaster,
    required this.ownerBagage,
    required this.imageTicketPassanger,
    required this.bagageType,
    required this.imagesBagage,
    required this.videoBagage,
    required this.inventory,
    required this.termsConditions,
    required this.imageDispatchTicket,
    required this.wight_bagage,
    required this.docNumber,
  });

  String descricao() {
    return 'Número do Voo: $numberFlight\n Cia. Aérea $airlineName\n Data da partida: $depDate\n Data da decolagem: $arrDate\n Horário da decolagem: $depTime\n Horário do pouso: $arrTime\n Iata origem: $iataDep\n Iata destino: $iataArr\n Cidae Origem: $cityDep\n Cidade destino: $cityArr\n Duração do voo: $durationFlight\n Proprietário do Cadastro: $ownerCadaster\n Proprietário da Bagagem: $ownerBagage\n Foto da passagem: $imageTicketPassanger\n Tipo da bagagem: $bagageType\n Fotos da bagagem: $imagesBagage\n Video da bagagem: $videoBagage\n Inventário: $inventory\n Termos e Condições $termsConditions\n Ticke despacho da bagagem: $imageDispatchTicket\n Peso: $wight_bagage\n Número do documento: $docNumber';
  }
}

//função que cria uma instância da bagagem e retorna
cadastroBagagem minhaBagagem({
  required String numberFlight,
  required String airlineName,
  required String depDate,
  required String arrDate,
  required String depTime,
  required String arrTime,
  required String iataDep,
  required String iataArr,
  required String cityDep,
  required String cityArr,
  required String durationFlight,
  required String ownerCadaster,
  required String ownerBagage,
  required String imageTicketPassanger,
  required String bagageType,
  required String imagesBagage,
  required String videoBagage,
  required String inventory,
  required bool termsConditions,
  required String imageDispatchTicket,
  required String wight_bagage,
  required String docNumber,
}) {
  return cadastroBagagem(
      numberFlight: numberFlight,
      airlineName: airlineName,
      depDate: depDate,
      arrDate: arrDate,
      depTime: depTime,
      arrTime: arrTime,
      iataDep: iataDep,
      iataArr: iataArr,
      cityDep: cityDep,
      cityArr: cityArr,
      durationFlight: durationFlight,
      ownerCadaster: ownerCadaster,
      ownerBagage: ownerBagage,
      imageTicketPassanger: imageTicketPassanger,
      bagageType: bagageType,
      imagesBagage: imagesBagage,
      videoBagage: videoBagage,
      inventory: inventory,
      termsConditions: termsConditions,
      imageDispatchTicket: imageDispatchTicket,
      wight_bagage: wight_bagage,
      docNumber: docNumber);
}

main() {
  cadastroBagagem myBagage = minhaBagagem(
      numberFlight: 'GLO1524',
      airlineName: 'Gol Linhas Aéreas Brasileiras',
      depDate: '12/09/24',
      arrDate: '12/09/24',
      depTime: '12:20 UTC',
      arrTime: '13:30 UTC',
      iataDep: 'CGH',
      iataArr: 'SDU',
      cityDep: 'São Paulo',
      cityArr: 'Rio de Janeiro',
      durationFlight: '01:10 h',
      ownerCadaster: 'Carlos Andrade',
      ownerBagage: 'Letícia Andrade',
      imageTicketPassanger: 'hyperlin',
      bagageType: 'Comum',
      imagesBagage: 'hyperlink',
      videoBagage: 'hyperlink',
      inventory:
          'Esta bagaem contem um macbook pro, duas camisas Dior, um perfume armany e um tenis misuno',
      termsConditions: true,
      imageDispatchTicket: 'hyperlink',
      wight_bagage: '23.4',
      docNumber: '#BGER094847389990');

  print(minhaBagagem);
}
