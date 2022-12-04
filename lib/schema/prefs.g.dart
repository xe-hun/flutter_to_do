// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefs.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetPrefsCollection on Isar {
  IsarCollection<Prefs> get prefs => this.collection();
}

const PrefsSchema = CollectionSchema(
  name: r'Prefs',
  id: -4578929708875442959,
  properties: {
    r'saveThemeType': PropertySchema(
      id: 0,
      name: r'saveThemeType',
      type: IsarType.int,
      enumMap: _PrefssaveThemeTypeEnumValueMap,
    )
  },
  estimateSize: _prefsEstimateSize,
  serialize: _prefsSerialize,
  deserialize: _prefsDeserialize,
  deserializeProp: _prefsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _prefsGetId,
  getLinks: _prefsGetLinks,
  attach: _prefsAttach,
  version: '3.0.5',
);

int _prefsEstimateSize(
  Prefs object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _prefsSerialize(
  Prefs object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeInt(offsets[0], object.saveThemeType?.index);
}

Prefs _prefsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Prefs(
    _PrefssaveThemeTypeValueEnumMap[reader.readIntOrNull(offsets[0])],
  );
  object.id = id;
  return object;
}

P _prefsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_PrefssaveThemeTypeValueEnumMap[reader.readIntOrNull(offset)])
          as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PrefssaveThemeTypeEnumValueMap = {
  'light': 0,
  'dark': 1,
};
const _PrefssaveThemeTypeValueEnumMap = {
  0: ThemeType.light,
  1: ThemeType.dark,
};

Id _prefsGetId(Prefs object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _prefsGetLinks(Prefs object) {
  return [];
}

void _prefsAttach(IsarCollection<dynamic> col, Id id, Prefs object) {
  object.id = id;
}

extension PrefsQueryWhereSort on QueryBuilder<Prefs, Prefs, QWhere> {
  QueryBuilder<Prefs, Prefs, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PrefsQueryWhere on QueryBuilder<Prefs, Prefs, QWhereClause> {
  QueryBuilder<Prefs, Prefs, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PrefsQueryFilter on QueryBuilder<Prefs, Prefs, QFilterCondition> {
  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> saveThemeTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'saveThemeType',
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> saveThemeTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'saveThemeType',
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> saveThemeTypeEqualTo(
      ThemeType? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saveThemeType',
        value: value,
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> saveThemeTypeGreaterThan(
    ThemeType? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saveThemeType',
        value: value,
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> saveThemeTypeLessThan(
    ThemeType? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saveThemeType',
        value: value,
      ));
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterFilterCondition> saveThemeTypeBetween(
    ThemeType? lower,
    ThemeType? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saveThemeType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PrefsQueryObject on QueryBuilder<Prefs, Prefs, QFilterCondition> {}

extension PrefsQueryLinks on QueryBuilder<Prefs, Prefs, QFilterCondition> {}

extension PrefsQuerySortBy on QueryBuilder<Prefs, Prefs, QSortBy> {
  QueryBuilder<Prefs, Prefs, QAfterSortBy> sortBySaveThemeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThemeType', Sort.asc);
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterSortBy> sortBySaveThemeTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThemeType', Sort.desc);
    });
  }
}

extension PrefsQuerySortThenBy on QueryBuilder<Prefs, Prefs, QSortThenBy> {
  QueryBuilder<Prefs, Prefs, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterSortBy> thenBySaveThemeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThemeType', Sort.asc);
    });
  }

  QueryBuilder<Prefs, Prefs, QAfterSortBy> thenBySaveThemeTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThemeType', Sort.desc);
    });
  }
}

extension PrefsQueryWhereDistinct on QueryBuilder<Prefs, Prefs, QDistinct> {
  QueryBuilder<Prefs, Prefs, QDistinct> distinctBySaveThemeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saveThemeType');
    });
  }
}

extension PrefsQueryProperty on QueryBuilder<Prefs, Prefs, QQueryProperty> {
  QueryBuilder<Prefs, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Prefs, ThemeType?, QQueryOperations> saveThemeTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saveThemeType');
    });
  }
}
