// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameCard _$GameCardFromJson(Map<String, dynamic> json) => GameCard(
      createdByUid: json['createdByUid'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      energyCost: (json['energyCost'] as num).toInt(),
      deckLimit: json['deckLimit'] as num?,
      flavorText: json['flavorText'] as String,
      failureChance: (json['failureChance'] as num?)?.toDouble(),
      fizzleChance: (json['fizzleChance'] as num?)?.toDouble(),
      backfireEffect: json['backfireEffect'] as String?,
      effectTypes: (json['effectTypes'] as List<dynamic>?)
          ?.map((e) => CardEffect.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameValueModifiers: json['gameValueModifiers'] as Map<String, dynamic>?,
      isPersistent: json['isPersistent'] as bool?,
      imageUri: json['imageUri'] as String,
      notes: json['notes'] as String,
      backgroundColor: (json['backgroundColor'] as num).toInt(),
    );

Map<String, dynamic> _$GameCardToJson(GameCard instance) => <String, dynamic>{
      'id': instance.id,
      'createdByUid': instance.createdByUid,
      'name': instance.name,
      'type': instance.type,
      'energyCost': instance.energyCost,
      'flavorText': instance.flavorText,
      'failureChance': instance.failureChance,
      'fizzleChance': instance.fizzleChance,
      'backfireEffect': instance.backfireEffect,
      'deckLimit': instance.deckLimit,
      'effectTypes': instance.effectTypes,
      'gameValueModifiers': instance.gameValueModifiers,
      'isPersistent': instance.isPersistent,
      'imageUri': instance.imageUri,
      'notes': instance.notes,
      'backgroundColor': instance.backgroundColor,
    };
