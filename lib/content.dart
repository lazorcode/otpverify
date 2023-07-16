class onboardingdata {
  String image;
  String title;
  String discription;

  onboardingdata(
      {required this.image, required this.title, required this.discription});
}

List<onboardingdata> contents = [
  onboardingdata(
      title: 'Create Your own Plate',
      image: 'assets/Illistration 1.png',
      discription:
          "Create unforgettable momories with our unique to curate your favourite cuisines and food tailored to your special ocassion. "),
  onboardingdata(
      title: 'Exquisite Catering',
      image: 'assets/Healthy options-pana.png',
      discription:
          "Experience culinary artistry like never before with our innovative and exquisite cuisine creations "),
  onboardingdata(
      title: 'Personal Order Executive',
      image: 'assets/Onboarding Illustration 3.png',
      discription:
          "Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seamless and satisfying experience every step of the way. "),
];
