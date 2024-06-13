class Package{
  final String packagename;
  final String ratings;
  final String reviews;
  final String duration;
  final List<String> packageservices;
  final double packageprice;

  const Package({
  required this.packagename, 
  required this.ratings,
  required this.reviews,
  required this.duration, 
  required this.packageservices,
  required this.packageprice});

}
class PackageDetails{
  final String image;
  final String description;

  PackageDetails({required this.image,required this.description});
}

List<Package> packagecardlist=[
  const Package(
    packagename: 'All in one Package',
    ratings: '4.5',
    reviews: '12 reviews',
    duration: '1 hours 45 mins',
    packageservices:['Body Spray','Medicated Bath','Teeth Brushing'],
    packageprice: 1129,
  ),
  const Package(
    packagename: 'Spa Package',
    ratings: '4.7',
    reviews: '14 reviews',
    duration: '1 hour 45 mins',
    packageservices:['Body Spray','Medicated Bath','Teeth Brushing','Massages','Haircut','Nail Clipping'],
    packageprice: 1029,
  ),
  const Package(
    packagename: 'Eye/Ear Cleaning',
    ratings: '4.5',
    reviews: '17 reviews',
    duration: '1 hour 30 mins',
    packageservices:['Body Spray','Medicated Bath','Teeth Brushing','Massages','Haircut'],
    packageprice: 929,
  ),
];