// make classes oveservable by making variables observable
import 'package:get/get_rx/get_rx.dart';

// class Movie {
//   var moviename = 'Pathan'.obs;
//   var ticketprice = 500.obs;
// }
//want to make entire class observable
class Movie {
  var moviename = 'Pathan';
  var ticketprice = 500;
  Movie({required this.moviename, required this.ticketprice});
}
