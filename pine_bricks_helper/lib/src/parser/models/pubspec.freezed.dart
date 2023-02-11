// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pubspec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pubspec _$PubspecFromJson(Map<String, dynamic> json) {
  return _Pubspec.fromJson(json);
}

/// @nodoc
mixin _$Pubspec {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubspecCopyWith<Pubspec> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubspecCopyWith<$Res> {
  factory $PubspecCopyWith(Pubspec value, $Res Function(Pubspec) then) =
      _$PubspecCopyWithImpl<$Res, Pubspec>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PubspecCopyWithImpl<$Res, $Val extends Pubspec>
    implements $PubspecCopyWith<$Res> {
  _$PubspecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PubspecCopyWith<$Res> implements $PubspecCopyWith<$Res> {
  factory _$$_PubspecCopyWith(
          _$_Pubspec value, $Res Function(_$_Pubspec) then) =
      __$$_PubspecCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_PubspecCopyWithImpl<$Res>
    extends _$PubspecCopyWithImpl<$Res, _$_Pubspec>
    implements _$$_PubspecCopyWith<$Res> {
  __$$_PubspecCopyWithImpl(_$_Pubspec _value, $Res Function(_$_Pubspec) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Pubspec(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pubspec extends _Pubspec {
  const _$_Pubspec({required this.name}) : super._();

  factory _$_Pubspec.fromJson(Map<String, dynamic> json) =>
      _$$_PubspecFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Pubspec(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pubspec &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PubspecCopyWith<_$_Pubspec> get copyWith =>
      __$$_PubspecCopyWithImpl<_$_Pubspec>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PubspecToJson(
      this,
    );
  }
}

abstract class _Pubspec extends Pubspec {
  const factory _Pubspec({required final String name}) = _$_Pubspec;
  const _Pubspec._() : super._();

  factory _Pubspec.fromJson(Map<String, dynamic> json) = _$_Pubspec.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PubspecCopyWith<_$_Pubspec> get copyWith =>
      throw _privateConstructorUsedError;
}
