import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonateRecord extends FirestoreRecord {
  DonateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomedeusuario" field.
  String? _nomedeusuario;
  String get nomedeusuario => _nomedeusuario ?? '';
  bool hasNomedeusuario() => _nomedeusuario != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "coderef_donate" field.
  String? _coderefDonate;
  String get coderefDonate => _coderefDonate ?? '';
  bool hasCoderefDonate() => _coderefDonate != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "share" field.
  List<DocumentReference>? _share;
  List<DocumentReference> get share => _share ?? const [];
  bool hasShare() => _share != null;

  void _initializeFields() {
    _nomedeusuario = snapshotData['nomedeusuario'] as String?;
    _photos = getDataList(snapshotData['photos']);
    _time = snapshotData['time'] as DateTime?;
    _coderefDonate = snapshotData['coderef_donate'] as String?;
    _userid = snapshotData['userid'] as String?;
    _description = snapshotData['description'] as String?;
    _share = getDataList(snapshotData['share']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donate');

  static Stream<DonateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonateRecord.fromSnapshot(s));

  static Future<DonateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonateRecord.fromSnapshot(s));

  static DonateRecord fromSnapshot(DocumentSnapshot snapshot) => DonateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonateRecordData({
  String? nomedeusuario,
  DateTime? time,
  String? coderefDonate,
  String? userid,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedeusuario': nomedeusuario,
      'time': time,
      'coderef_donate': coderefDonate,
      'userid': userid,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonateRecordDocumentEquality implements Equality<DonateRecord> {
  const DonateRecordDocumentEquality();

  @override
  bool equals(DonateRecord? e1, DonateRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomedeusuario == e2?.nomedeusuario &&
        listEquality.equals(e1?.photos, e2?.photos) &&
        e1?.time == e2?.time &&
        e1?.coderefDonate == e2?.coderefDonate &&
        e1?.userid == e2?.userid &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.share, e2?.share);
  }

  @override
  int hash(DonateRecord? e) => const ListEquality().hash([
        e?.nomedeusuario,
        e?.photos,
        e?.time,
        e?.coderefDonate,
        e?.userid,
        e?.description,
        e?.share
      ]);

  @override
  bool isValidKey(Object? o) => o is DonateRecord;
}
