 class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String payment;
  List<String> req;
  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.payment, this.req);
  static List<Job> generateJobs() {
    return [
      Job(
        'hexing industries',
        'logoUrl',
        false,
        'stone masons',
        'kingongo',
        'weekly',
        [
          'Needed are stone masons certified by the construction board of kenya',
          'no tools are required as everything will be provided on site'
              'aplliacants to send the application before 3th septem,ber 2022'
        ],
      ),
      Job(
        'ndirangu & son',
        'logoUrl',
        true,
        'Electricians',
        'nyeri town naivas building',
        'after completion of the scheduled work',
        [
          'James & son are looking for qualified electricians with necessary certificates and have worked on a number of projects.'
              'work to be done is wiring'
              '7 electricians only'
              'apply before th october'
        ],
      ),
      Job(
        'salmon',
        'logoUrl',
        false,
        'plumbers',
        'nyeri town naivas building',
        'after completion of the scheduled work',
        [
          'James & son are looking for qualified electricians with necessary certificates and have worked on a number of projects.'
              'work to be done is wiring'
              '7 electricians only'
              'apply before th october'
        ],
      ),
    ];
  }

  
} 
