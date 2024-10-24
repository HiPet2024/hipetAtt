import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonatePostRecord extends FirestoreRecord {
  DonatePostRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "code_ref" field.
  String? _codeRef;
  String get codeRef => _codeRef ?? '';
  bool hasCodeRef() => _codeRef != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "nomedeusuario" field.
  String? _nomedeusuario;
  String get nomedeusuario => _nomedeusuario ?? '';
  bool hasNomedeusuario() => _nomedeusuario != null;

  // "bookmark_donate" field.
  List<DocumentReference>? _bookmarkDonate;
  List<DocumentReference> get bookmarkDonate => _bookmarkDonate ?? const [];
  bool hasBookmarkDonate() => _bookmarkDonate != null;

  // "tipoanimal" field.
  String? _tipoanimal;
  String get tipoanimal => _tipoanimal ?? '';
  bool hasTipoanimal() => _tipoanimal != null;

  // "porte" field.
  String? _porte;
  String get porte => _porte ?? '';
  bool hasPorte() => _porte != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "formadecontato" field.
  String? _formadecontato;
  String get formadecontato => _formadecontato ?? '';
  bool hasFormadecontato() => _formadecontato != null;

  void _initializeFields() {
    _photos = getDataList(snapshotData['photos']);
    _time = snapshotData['time'] as DateTime?;
    _codeRef = snapshotData['code_ref'] as String?;
    _userid = snapshotData['userid'] as String?;
    _description = snapshotData['description'] as String?;
    _nomedeusuario = snapshotData['nomedeusuario'] as String?;
    _bookmarkDonate = getDataList(snapshotData['bookmark_donate']);
    _tipoanimal = snapshotData['tipoanimal'] as String?;
    _porte = snapshotData['porte'] as String?;
    _genero = snapshotData['genero'] as String?;
    _formadecontato = snapshotData['formadecontato'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donate_post');

  static Stream<DonatePostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonatePostRecord.fromSnapshot(s));

  static Future<DonatePostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonatePostRecord.fromSnapshot(s));

  static DonatePostRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DonatePostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonatePostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonatePostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonatePostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonatePostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonatePostRecordData({
  DateTime? time,
  String? codeRef,
  String? userid,
  String? description,
  String? nomedeusuario,
  String? tipoanimal,
  String? porte,
  String? genero,
  String? formadecontato,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'code_ref': codeRef,
      'userid': userid,
      'description': description,
      'nomedeusuario': nomedeusuario,
      'tipoanimal': tipoanimal,
      'porte': porte,
      'genero': genero,
      'formadecontato': formadecontato,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonatePostRecordDocumentEquality implements Equality<DonatePostRecord> {
  const DonatePostRecordDocumentEquality();

  @override
  bool equals(DonatePostRecord? e1, DonatePostRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.photos, e2?.photos) &&
        e1?.time == e2?.time &&
        e1?.codeRef == e2?.codeRef &&
        e1?.userid == e2?.userid &&
        e1?.description == e2?.description &&
        e1?.nomedeusuario == e2?.nomedeusuario &&
        listEquality.equals(e1?.bookmarkDonate, e2?.bookmarkDonate) &&
        e1?.tipoanimal == e2?.tipoanimal &&
        e1?.porte == e2?.porte &&
        e1?.genero == e2?.genero &&
        e1?.formadecontato == e2?.formadecontato;
  }

  @override
  int hash(DonatePostRecord? e) => const ListEquality().hash([
        e?.photos,
        e?.time,
        e?.codeRef,
        e?.userid,
        e?.description,
        e?.nomedeusuario,
        e?.bookmarkDonate,
        e?.tipoanimal,
        e?.porte,
        e?.genero,
        e?.formadecontato
      ]);

  @override
  bool isValidKey(Object? o) => o is DonatePostRecord;
}
