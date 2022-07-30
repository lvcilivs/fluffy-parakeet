import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_event.dart';
part 'terms_state.dart';
part 'terms_bloc.freezed.dart';

class TermsBloc extends Bloc<TermsEvent, TermsState> {
  TermsBloc() : super(_Initial()) {
    on<TermsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
