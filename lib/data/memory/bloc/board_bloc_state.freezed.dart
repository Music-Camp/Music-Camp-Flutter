// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoardBlocState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Board> get boardList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardBlocStateCopyWith<BoardBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardBlocStateCopyWith<$Res> {
  factory $BoardBlocStateCopyWith(
          BoardBlocState value, $Res Function(BoardBlocState) then) =
      _$BoardBlocStateCopyWithImpl<$Res, BoardBlocState>;
  @useResult
  $Res call({BlocStatus status, List<Board> boardList});
}

/// @nodoc
class _$BoardBlocStateCopyWithImpl<$Res, $Val extends BoardBlocState>
    implements $BoardBlocStateCopyWith<$Res> {
  _$BoardBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? boardList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      boardList: null == boardList
          ? _value.boardList
          : boardList // ignore: cast_nullable_to_non_nullable
              as List<Board>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardBlocStateImplCopyWith<$Res>
    implements $BoardBlocStateCopyWith<$Res> {
  factory _$$BoardBlocStateImplCopyWith(_$BoardBlocStateImpl value,
          $Res Function(_$BoardBlocStateImpl) then) =
      __$$BoardBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<Board> boardList});
}

/// @nodoc
class __$$BoardBlocStateImplCopyWithImpl<$Res>
    extends _$BoardBlocStateCopyWithImpl<$Res, _$BoardBlocStateImpl>
    implements _$$BoardBlocStateImplCopyWith<$Res> {
  __$$BoardBlocStateImplCopyWithImpl(
      _$BoardBlocStateImpl _value, $Res Function(_$BoardBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? boardList = null,
  }) {
    return _then(_$BoardBlocStateImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      null == boardList
          ? _value._boardList
          : boardList // ignore: cast_nullable_to_non_nullable
              as List<Board>,
    ));
  }
}

/// @nodoc

class _$BoardBlocStateImpl implements _BoardBlocState {
  const _$BoardBlocStateImpl(this.status, final List<Board> boardList)
      : _boardList = boardList;

  @override
  final BlocStatus status;
  final List<Board> _boardList;
  @override
  List<Board> get boardList {
    if (_boardList is EqualUnmodifiableListView) return _boardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boardList);
  }

  @override
  String toString() {
    return 'BoardBlocState(status: $status, boardList: $boardList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._boardList, _boardList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_boardList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardBlocStateImplCopyWith<_$BoardBlocStateImpl> get copyWith =>
      __$$BoardBlocStateImplCopyWithImpl<_$BoardBlocStateImpl>(
          this, _$identity);
}

abstract class _BoardBlocState implements BoardBlocState {
  const factory _BoardBlocState(
          final BlocStatus status, final List<Board> boardList) =
      _$BoardBlocStateImpl;

  @override
  BlocStatus get status;
  @override
  List<Board> get boardList;
  @override
  @JsonKey(ignore: true)
  _$$BoardBlocStateImplCopyWith<_$BoardBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
