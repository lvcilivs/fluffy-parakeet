part of 'pdf_loader_bloc.dart';

class PdfLoaderEvent extends Equatable {
  const PdfLoaderEvent();

  @override
  List<Object> get props => [];
}

class GetPdfByLanguage extends PdfLoaderEvent {
  const GetPdfByLanguage({required this.language});
  final String language;

  @override
  List<Object> get props => [language];
}
