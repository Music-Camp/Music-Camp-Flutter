// UI에서 bloc에 전달할 Event를 추상화 클래스로 정의한다.
import 'package:equatable/equatable.dart';
// Equatable은 비교 라이브러리

abstract class BoardEvent extends Equatable{
  const BoardEvent();
}

// get 대신 보통 fetch라는 키워드를 사용함
class FetchBoardListEvent extends BoardEvent{
  @override
  List<Object?> get props => [];
}