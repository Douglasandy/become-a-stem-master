// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ContentHeaderStruct extends FFFirebaseStruct {
  ContentHeaderStruct({
    String? content,
    String? subContent,
    String? unit,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _content = content,
        _subContent = subContent,
        _unit = unit,
        super(firestoreUtilData);

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;
  bool hasContent() => _content != null;

  // "subContent" field.
  String? _subContent;
  String get subContent => _subContent ?? '';
  set subContent(String? val) => _subContent = val;
  bool hasSubContent() => _subContent != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;
  bool hasUnit() => _unit != null;

  static ContentHeaderStruct fromMap(Map<String, dynamic> data) =>
      ContentHeaderStruct(
        content: data['content'] as String?,
        subContent: data['subContent'] as String?,
        unit: data['unit'] as String?,
      );

  static ContentHeaderStruct? maybeFromMap(dynamic data) => data is Map
      ? ContentHeaderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'content': _content,
        'subContent': _subContent,
        'unit': _unit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'subContent': serializeParam(
          _subContent,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContentHeaderStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContentHeaderStruct(
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        subContent: deserializeParam(
          data['subContent'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContentHeaderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContentHeaderStruct &&
        content == other.content &&
        subContent == other.subContent &&
        unit == other.unit;
  }

  @override
  int get hashCode => const ListEquality().hash([content, subContent, unit]);
}

ContentHeaderStruct createContentHeaderStruct({
  String? content,
  String? subContent,
  String? unit,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ContentHeaderStruct(
      content: content,
      subContent: subContent,
      unit: unit,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ContentHeaderStruct? updateContentHeaderStruct(
  ContentHeaderStruct? contentHeader, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    contentHeader
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addContentHeaderStructData(
  Map<String, dynamic> firestoreData,
  ContentHeaderStruct? contentHeader,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (contentHeader == null) {
    return;
  }
  if (contentHeader.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && contentHeader.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final contentHeaderData =
      getContentHeaderFirestoreData(contentHeader, forFieldValue);
  final nestedData =
      contentHeaderData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = contentHeader.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getContentHeaderFirestoreData(
  ContentHeaderStruct? contentHeader, [
  bool forFieldValue = false,
]) {
  if (contentHeader == null) {
    return {};
  }
  final firestoreData = mapToFirestore(contentHeader.toMap());

  // Add any Firestore field values
  contentHeader.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getContentHeaderListFirestoreData(
  List<ContentHeaderStruct>? contentHeaders,
) =>
    contentHeaders
        ?.map((e) => getContentHeaderFirestoreData(e, true))
        .toList() ??
    [];
