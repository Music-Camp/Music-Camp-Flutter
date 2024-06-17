import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_camp/data/memory/bloc/bloc_status.dart';

import '../../../domain/model/board.dart';

part 'board_bloc_state.freezed.dart';

// freezed 사용
@freezed
class BoardBlocState with _$BoardBlocState {
  const factory BoardBlocState(
      BlocStatus status,
      List<Board> boardList,
  ) = _BoardBlocState;
}
