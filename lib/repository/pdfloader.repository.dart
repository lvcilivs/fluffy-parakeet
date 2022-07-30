class PdfLoaderRepository {
  static Future<String> loadPdfByLanguage(String language) {
    // Make a service call which will fetch a list of Strings containing the url
    // pdfs from an API.
    return PdfLoaderRepository.mockFetchingFromApi(language);
  }

  static Future<String> mockFetchingFromApi(String language) async {
    return Future.delayed(const Duration(seconds: 5), (() {
      switch (language) {
        case 'English':
          return 'https://www.grantlibrary.net/uploads/4/5/5/6/45565029/goodreads_100_books_you_should_read_in_a_lifetime.pdf';

        case 'Telegu':
          return 'https://penguinrandomhousehighereducation.com/wp-content/uploads/2018/01/Classics_2017-Online.pdf';

        default:
          return 'https://freeclassicebooks.com/London%20Jack/John%20Barleycorn.pdf';
      }
    }));
  }
}
