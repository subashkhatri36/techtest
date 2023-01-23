import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/features/Diary/bloc/diary_state.dart';

abstract class DiaryEvent {}

class ImagePickEvent extends DiaryEvent {}

class RemoveImageEvent extends DiaryEvent {}

class IncludeInGallaryEvent extends DiaryEvent {}

class LinkToExistingEvent extends DiaryEvent {}

class NextEvent extends DiaryEvent {}

class AddDiaryBloc extends Bloc<DiaryEvent, DiaryState> {
  AddDiaryBloc(super.initialState) {
    on<ImagePickEvent>((event, emit) {});
  }
}
