part of 'terms_and_conditions_bloc.dart';

class TermsAndConditionsState extends Equatable {
  const TermsAndConditionsState({
    this.language = 'English',
  });

  final String language;

  @override
  List<Object> get props => [language];

  TermsAndConditionsState copyWith({String? language}) {
    return TermsAndConditionsState(language: language ?? this.language);
  }
}

class TermsAndConditionsInitial extends TermsAndConditionsState {}
