enum Case { lower, upper, undefined }

class CaseConversor {
  CaseConversor([this.forceCase = Case.undefined]);

  final Case forceCase;

  String convert(String text) {
    switch(forceCase) {
      case Case.lower:
        return text.toLowerCase();
      case Case.upper:
        return text.toUpperCase();
      default:
        return text;
    }
  }
}
