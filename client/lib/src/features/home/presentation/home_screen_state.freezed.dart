// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenState {
  List<Book> get books => throw _privateConstructorUsedError;
  List<Profile> get authors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call({List<Book> books, List<Profile> authors});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? authors = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$_HomeScreenStateCopyWith(
          _$_HomeScreenState value, $Res Function(_$_HomeScreenState) then) =
      __$$_HomeScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Book> books, List<Profile> authors});
}

/// @nodoc
class __$$_HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$_HomeScreenState>
    implements _$$_HomeScreenStateCopyWith<$Res> {
  __$$_HomeScreenStateCopyWithImpl(
      _$_HomeScreenState _value, $Res Function(_$_HomeScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? authors = null,
  }) {
    return _then(_$_HomeScreenState(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState implements _HomeScreenState {
  _$_HomeScreenState(
      {final List<Book> books = const [],
      final List<Profile> authors = const []})
      : _books = books,
        _authors = authors;

  final List<Book> _books;
  @override
  @JsonKey()
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  final List<Profile> _authors;
  @override
  @JsonKey()
  List<Profile> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  String toString() {
    return 'HomeScreenState(books: $books, authors: $authors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenState &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_authors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      __$$_HomeScreenStateCopyWithImpl<_$_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  factory _HomeScreenState(
      {final List<Book> books,
      final List<Profile> authors}) = _$_HomeScreenState;

  @override
  List<Book> get books;
  @override
  List<Profile> get authors;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
