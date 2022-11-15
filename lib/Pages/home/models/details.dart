class details {
  String about;
  String logoUrl1;
  bool isMark;
  String title1;
  List<String> req;
  details(this.about, this.logoUrl1, this.isMark, this.title1, this.req);
  static List<details> generateJobs() {
    return [
      details(
        'About us',
        'assets/images/google_logo.png',
        false,
        'NatCorp was originated last October 1, 2012. ',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production method',
          'How technocal, practocal and scientific knowledge',
          'Interested in the way people choose and use product',
        ],
      ),
      details(
        'Services',
        'assets/images/airbnb_logo.png',
        false,
        'We will quickly send you our abundant talent',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production method',
          'How technocal, practocal and scientific knowledge',
          'Interested in the way people choose and use product',
        ],
      ),
      details(
        'Benefits',
        'assets/images/linkedin_logo.png',
        false,
        'We Care for you',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production method',
          'How technocal, practocal and scientific knowledge',
          'Interested in the way people choose and use product',
        ],
      ),
      details(
        'Requirements',
        'assets/images/google_logo.png',
        false,
        'Talent Acqusition Lead',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production method',
          'How technocal, practocal and scientific knowledge',
          'Interested in the way people choose and use product',
        ],
      ),
    ];
  }
}
