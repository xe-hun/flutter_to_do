import 'dart:math';

import 'package:flutter_to_do/infrastructure/data_source/save_box.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../schema/prefs_test.dart';
@GenerateNiceMocks([
  MockSpec<Isar>(
    fallbackGenerators: {
      #txnSync: txnSyncX,
      #writeTxnSync: writeTxnSyncX,
      #writeTxn: writeTxnX,
    },
  )
])
@GenerateNiceMocks([MockSpec<IsarCollection>()])
import 'save_box_test.mocks.dart';

T txnSyncX<T>(T Function()? callback) {
  final s = callback?.call();
  if (s != null) return s;
  throw 'callback cannot return null';
}

T writeTxnSyncX<T>(T Function()? callback, {bool? silent = false}) {
  final s = callback?.call();
  if (s != null) return s;
  throw 'callback cannot return null';
}

Future<T> writeTxnX<T>(Future<T> Function()? callback,
    {bool? silent = false}) async {
  final s = await callback?.call();
  if (s != null) return s;
  throw 'callback cannot return null';
}

IsarCollection<T> collectionX<T>() {
  return MockIsarCollection<T>();
}

void main() {
  late SaveBoxImpl saveBoxImpl;
  late MockIsar isar;

  setUp(() {
    isar = MockIsar();
    saveBoxImpl = SaveBoxImpl(isar);
  });

  group('save', () {
    test('should return key of object if stored successfully', () async {
      //arrange
      final id = Random().nextInt(500);
      final prefs = PrefsTest()..id = id;
      final isarCollection = MockIsarCollection<PrefsTest>();
      when(isar.collection<PrefsTest>()).thenReturn(isarCollection);
      when(isarCollection.put(prefs)).thenAnswer((_) => Future.value(prefs.id));
      when(isar.writeTxn(() => isarCollection.put(prefs)))
          .thenAnswer((_) => Future.value(prefs.id));

      //act
      final result = await saveBoxImpl.save(object: prefs);
      //assert
      verify(isarCollection.put(prefs));
      expect(result, id);
    });
  });

  group('read', () {
    test('should return stored object from the storage', () async {
      //arrange
      final prefs = PrefsTest();
      final isarCollection = MockIsarCollection<PrefsTest>();
      when(isar.collection<PrefsTest>()).thenReturn(isarCollection);

      when(isarCollection.get(0)).thenAnswer((_) => Future.value(prefs));

      //act
      final result = await saveBoxImpl.read<PrefsTest, int>(key: 0);
      //assert
      verify(isarCollection.get(0));
      expect(result, prefs);
    });

    test('should throw exception if key passed is not of type int', () async {
      //arrange

      //act
      final result = saveBoxImpl.read<PrefsTest, String>(key: '');
      //assert
      expect(() => result, throwsException);
    });
  });
}
