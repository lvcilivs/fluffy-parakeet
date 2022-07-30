part of 'terms_and_conditions_bloc.dart';

abstract class TermsAndConditionsEvent extends Equatable {
  const TermsAndConditionsEvent();

  @override
  List<Object> get props => [];
}

class SelectLanguage extends TermsAndConditionsEvent {
  const SelectLanguage({
    required this.selectedLanguage,
  });
  final String selectedLanguage;

  @override
  List<Object> get props => [selectedLanguage];
}
