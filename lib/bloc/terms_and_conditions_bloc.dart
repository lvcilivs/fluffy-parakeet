import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'terms_and_conditions_event.dart';
part 'terms_and_conditions_state.dart';

class TermsAndConditionsBloc
    extends Bloc<TermsAndConditionsEvent, TermsAndConditionsState> {
  TermsAndConditionsBloc() : super(TermsAndConditionsInitial()) {
    on<SelectLanguage>(_mapSelectLanguageToState);
  }
  _mapSelectLanguageToState(
      SelectLanguage event, Emitter<TermsAndConditionsState> emit) {
    emit(state.copyWith(language: event.selectedLanguage));
  }
}
