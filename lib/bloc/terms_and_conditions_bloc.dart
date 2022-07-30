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
    switch (event.selectedLanguage) {
      case 'English':
        return emit(state.copyWith(
            language: event.selectedLanguage,
            pdfUrl:
                'https://www.grantlibrary.net/uploads/4/5/5/6/45565029/goodreads_100_books_you_should_read_in_a_lifetime.pdf'));

      case 'Telegu':
        return emit(state.copyWith(
            language: event.selectedLanguage,
            pdfUrl:
                'https://penguinrandomhousehighereducation.com/wp-content/uploads/2018/01/Classics_2017-Online.pdf'));

      default:
        return emit(state.copyWith(
            language: event.selectedLanguage,
            pdfUrl:
                'https://freeclassicebooks.com/London%20Jack/John%20Barleycorn.pdf'));
    }
  }
  //emit(state.copyWith(language: event.selectedLanguage));
}
