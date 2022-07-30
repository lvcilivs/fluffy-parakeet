part of 'pdf_loader_bloc.dart';

class PdfLoaderState extends Equatable {
  const PdfLoaderState({String? language, String? pdfUrl})
      : language = language ?? 'English',
        pdfUrl = pdfUrl ??
            'https://www.grantlibrary.net/uploads/4/5/5/6/45565029/goodreads_100_books_you_should_read_in_a_lifetime.pdf';

  final String language;
  final String pdfUrl;

  @override
  List<Object> get props => [language, pdfUrl];

  PdfLoaderState copyWith({String? language, String? pdfUrl}) {
    return PdfLoaderState(
      language: language ?? this.language,
      pdfUrl: pdfUrl ?? this.pdfUrl,
    );
  }
}

class PdfLoaderInitial extends PdfLoaderState {}
