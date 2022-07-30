import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pdf_loader_event.dart';
part 'pdf_loader_state.dart';

class PdfLoaderBloc extends Bloc<PdfLoaderEvent, PdfLoaderState> {
  PdfLoaderBloc() : super(PdfLoaderInitial()) {
    on<GetPdfByLanguage>(_mapGetPdfByLanguageToState);
  }

  void _mapGetPdfByLanguageToState(
      GetPdfByLanguage event, Emitter<PdfLoaderState> emit) async {
    switch (event.language) {
      case 'English':
        return emit(state.copyWith(
            language: event.language,
            pdfUrl:
                'https://www.grantlibrary.net/uploads/4/5/5/6/45565029/goodreads_100_books_you_should_read_in_a_lifetime.pdf'));

      case 'Telegu':
        return emit(state.copyWith(
            language: event.language,
            pdfUrl:
                'https://penguinrandomhousehighereducation.com/wp-content/uploads/2018/01/Classics_2017-Online.pdf'));

      default:
        return emit(state.copyWith(
            language: event.language,
            pdfUrl:
                'https://freeclassicebooks.com/London%20Jack/John%20Barleycorn.pdf'));
    }
  }
}
