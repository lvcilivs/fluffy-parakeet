import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sneezing_cheetah/repository/pdfloader.repository.dart';

part 'terms_and_conditions_event.dart';
part 'terms_and_conditions_state.dart';

class TermsAndConditionsBloc
    extends Bloc<TermsAndConditionsEvent, TermsAndConditionsState> {
  TermsAndConditionsBloc() : super(TermsAndConditionsInitial()) {
    on<SelectLanguage>(_mapSelectLanguageToState);
  }

  _mapSelectLanguageToState(
      SelectLanguage event, Emitter<TermsAndConditionsState> emit) async {
    emit(state.copyWith(language: event.selectedLanguage));
    String pdfUrl =
        await PdfLoaderRepository.loadPdfByLanguage(event.selectedLanguage);
    emit(state.copyWith(language: event.selectedLanguage, pdfUrl: pdfUrl));
  }
  //emit(state.copyWith(language: event.selectedLanguage));
}
