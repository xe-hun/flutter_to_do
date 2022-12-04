// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefs_test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetPrefsTestCollection on Isar {
  IsarCollection<PrefsTest> get prefsTests => this.collection();
}

const PrefsTestSchema = CollectionSchema(
  name: r'PrefsTest',
  id: 8767223405497143964,
  properties: {},
  estimateSize: _prefsTestEstimateSize,
  serialize: _prefsTestSerialize,
  deserialize: _prefsTestDeserialize,
  deserializeProp: _prefsTestDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _prefsTestGetId,
  getLinks: _prefsTestGetLinks,
  attach: _prefsTestAttach,
  version: '3.0.5',
);

int _prefsTestEstimateSize(
  PrefsTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _prefsTestSerialize(
  PrefsTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
PrefsTest _prefsTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PrefsTest();
  object.id = id;
  return object;
}

P _prefsTestDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _prefsTestGetId(PrefsTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _prefsTestGetLinks(PrefsTest object) {
  return [];
}

void _prefsTestAttach(IsarCollection<dynamic> col, Id id, PrefsTest object) {
  object.id = id;
}

extension PrefsTestQueryWhereSort
    on QueryBuilder<PrefsTest, PrefsTest, QWhere> {
  QueryBuilder<PrefsTest, PrefsTest, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PrefsTestQueryWhere
    on QueryBuilder<PrefsTest, PrefsTest, QWhereClause> {
  QueryBuilder<PrefsTest, PrefsTest, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PrefsTest, PrefsTest, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<PrefsTest, PrefsTest, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PrefsTest, PrefsTest, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PrefsTest, PrefsTest, QAfterWhereClause> idBetween(
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

extension PrefsTestQueryFilter
    on QueryBuilder<PrefsTest, PrefsTest, QFilterCondition> {
  QueryBuilder<PrefsTest, PrefsTest, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PrefsTest, PrefsTest, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PrefsTest, PrefsTest, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PrefsTest, PrefsTest, QAfterFilterCondition> idBetween(
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
}

extension PrefsTestQueryObject
    on QueryBuilder<PrefsTest, PrefsTest, QFilterCondition> {}

extension PrefsTestQueryLinks
    on QueryBuilder<PrefsTest, PrefsTest, QFilterCondition> {}

extension PrefsTestQuerySortBy on QueryBuilder<PrefsTest, PrefsTest, QSortBy> {}

extension PrefsTestQuerySortThenBy
    on QueryBuilder<PrefsTest, PrefsTest, QSortThenBy> {
  QueryBuilder<PrefsTest, PrefsTest, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PrefsTest, PrefsTest, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension PrefsTestQueryWhereDistinct
    on QueryBuilder<PrefsTest, PrefsTest, QDistinct> {}

extension PrefsTestQueryProperty
    on QueryBuilder<PrefsTest, PrefsTest, QQueryProperty> {
  QueryBuilder<PrefsTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
