part of 'terms_and_conditions_bloc.dart';

class TermsAndConditionsState extends Equatable {
  const TermsAndConditionsState(
      {this.language = 'English',
      this.pdfUrl =
          'https://www.grantlibrary.net/uploads/4/5/5/6/45565029/goodreads_100_books_you_should_read_in_a_lifetime.pdf'});

  final String language;
  final String pdfUrl;

  @override
  List<Object> get props => [language, pdfUrl];

  TermsAndConditionsState copyWith({String? language, String? pdfUrl}) {
    return TermsAndConditionsState(
      language: language ?? this.language,
      pdfUrl: pdfUrl ?? this.pdfUrl,
    );
  }
}

class TermsAndConditionsInitial extends TermsAndConditionsState {}
