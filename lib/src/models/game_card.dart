import 'package:json_annotation/json_annotation.dart';

import 'card_effect.dart';

part 'game_card.g.dart';

@JsonSerializable()
class GameCard {
  final String id;
  final String createdByUid;

  final String name;
  final String type;
  final int energyCost;
  //final int? damage;
  //final String effectDetails;
  final String flavorText;
  final double? failureChance;
  final double? fizzleChance; // Added new field
  final String? backfireEffect;
  final num? deckLimit;
  final List<CardEffect>? effectTypes;
  final Map<String, dynamic>? gameValueModifiers;
  final bool? isPersistent;
  final String imageUri;
  final String notes;
  final int backgroundColor;

  GameCard({
    required this.createdByUid,
    required this.id,
    required this.name,
    required this.type,
    required this.energyCost,
    required this.deckLimit,
    //  this.damage,
    // required this.effectDetails,
    required this.flavorText,
    this.failureChance,
    this.fizzleChance, // Added to constructor
    this.backfireEffect,
    this.effectTypes,
    this.gameValueModifiers,
    this.isPersistent,
    required this.imageUri,
    required this.notes,
    required this.backgroundColor,
  });
  factory GameCard.fromJson(Map<String, dynamic> json) =>
      _$GameCardFromJson(json);
  Map<String, dynamic> toJson() {
    final json = _$GameCardToJson(this);
    if (effectTypes != null) {
      json['effectTypes'] = effectTypes!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
