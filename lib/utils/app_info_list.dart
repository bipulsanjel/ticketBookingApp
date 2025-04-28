List<Map<String, dynamic>> hotelList = [
  {
    'image': 'mountain.jpg',
    'place': 'Kori',
    'destination': 'Pokhara',
    'price': 250
  },
  {
    'image': 'stupa.jpg',
    'place': 'Kyanjin Gompa',
    'destination': 'Langtang',
    'price': 400
  },
  {
    'image': 'sunset.jpg',
    'place': 'Sallaghari',
    'destination': 'Lalitpur',
    'price': 60
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code':"KTM",
      'name':"Kathmandu"
    },
    'to': {
      'code':"PKR",
      'name':"Pokhara"
    },
    'flying_time': '1H 30M',
    'date': "1 MAY",
    'departure_time':"08:00 AM",
    "number":23
  },
  {
    'from': {
      'code':"DOP",
      'name':"Dolpa"
    },
    'to': {
      'code':"LUA",
      'name':"Lukla"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45
  },
];
class AppRoutes{

  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";

}