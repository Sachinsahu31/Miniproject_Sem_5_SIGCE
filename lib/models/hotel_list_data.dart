import 'package:flutter/material.dart';
import 'package:pg_5/models/room_data.dart';
import 'package:pg_5/utils/localfiles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelListData {
  String imagePath;
  String titleTxt;
  String subTxt;
  DateText? date;
  String dateTxt;
  String roomSizeTxt;
  RoomData? roomData;
  double dist;
  double rating;
  int reviews;
  int perMonth;
  bool isSelected;
  PeopleSleeps? peopleSleeps;
  LatLng? location;
  Offset? screenMapPin; // we used this screen Offset for adding on Map layer

  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dateTxt = "",
    this.roomSizeTxt = "",
    this.roomData,
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perMonth = 180,
    this.isSelected = false,
    this.date,
    this.peopleSleeps,
    this.location,
    this.screenMapPin,
  });

  // we need location in this hotelList bcz we using that in map
  static List<HotelListData> hotelList = [
    HotelListData(
      imagePath: Localfiles.hotel_1,
      titleTxt: 'Sharma Pg',
      subTxt: 'Ghansoli Gaon, Ghansoli',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perMonth: 8000,
      roomData: RoomData(1, 2),
      isSelected: true,
      date: DateText(1, 5),
      location: LatLng(51.516898, -0.143377),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_2,
      titleTxt: 'Rinku Singh',
      subTxt: 'Sector-19, Airoli',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perMonth: 10000,
      roomData: RoomData(1, 3),
      isSelected: false,
      date: DateText(2, 6),
      location: LatLng(51.505799, -0.137904),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_3,
      titleTxt: 'PG 10101597',
      subTxt: 'Sector-16, Vashi',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
      perMonth: 6000,
      roomData: RoomData(2, 3),
      isSelected: false,
      date: DateText(5, 9),
      location: LatLng(51.499162, -0.119788),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_4,
      titleTxt: 'Raj Kumar PG',
      subTxt: 'Sector-6, Nerul',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      perMonth: 7000,
      isSelected: false,
      roomData: RoomData(2, 2),
      date: DateText(1, 5),
      location: LatLng(51.519541, -0.114503),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_5,
      titleTxt: 'Siddesh PG',
      subTxt: 'Sector-13, Nerul',
      dist: 2.0,
      reviews: 240,
      rating: 4.5,
      isSelected: false,
      perMonth: 9000,
      roomData: RoomData(1, 7),
      date: DateText(1, 4),
      location: LatLng(51.508383, -0.109502),
    ),
  ];

  static List<HotelListData> popularList = [
    HotelListData(
      imagePath: Localfiles.popular_1,
      titleTxt: 'Ghansoli',
    ),
    HotelListData(
      imagePath: Localfiles.popular_2,
      titleTxt: 'Airoli',
    ),
    HotelListData(
      imagePath: Localfiles.popular_3,
      titleTxt: 'Nerul',
    ),
    HotelListData(
      imagePath: Localfiles.popular_4,
      titleTxt: 'Vashi',
    ),
    HotelListData(
      imagePath: Localfiles.popular_5,
      titleTxt: 'Thane',
    ),
    HotelListData(
      imagePath: Localfiles.popular_6,
      titleTxt: 'Koparkhairne',
    ),
  ];

  static List<HotelListData> reviewsList = [
    HotelListData(
      imagePath: Localfiles.avatar1,
      titleTxt: 'Alexia Jane',
      subTxt:
          'This is located in a great spot close to shops, very quiet location',
      rating: 8.0,
      dateTxt: '21 May, 2019',
    ),
    HotelListData(
      imagePath: Localfiles.avatar3,
      titleTxt: 'Jacky Depp',
      subTxt: 'Good host, very comfortable bed, very quiet location place',
      rating: 8.0,
      dateTxt: '21 May, 2019',
    ),
    HotelListData(
      imagePath: Localfiles.avatar5,
      titleTxt: 'Alex Carl',
      subTxt:
          'This is located in a great spot close to shops and clinics, very quiet location',
      rating: 6.0,
      dateTxt: '21 May, 2019',
    ),
    HotelListData(
      imagePath: Localfiles.avatar2,
      titleTxt: 'May June',
      subTxt:
          'Good staff, very comfortable bed, very quiet location, place could do with an update',
      rating: 9.0,
      dateTxt: '21 May, 2019',
    ),
    HotelListData(
      imagePath: Localfiles.avatar4,
      titleTxt: 'Lesley Rivas',
      subTxt:
          'This is located in a great spot close to shops and pharmacy, very quiet location',
      rating: 8.0,
      dateTxt: '21 May, 2019',
    ),
    HotelListData(
      imagePath: Localfiles.avatar6,
      titleTxt: 'Carlos Lasmar',
      subTxt:
          'Good staff, very comfortable bed, very quiet location, place could do with an update',
      rating: 7.0,
      dateTxt: '21 May, 2019',
    ),
    HotelListData(
      imagePath: Localfiles.avatar7,
      titleTxt: 'Oliver Smith',
      subTxt:
          'This is located in a great spot close to shops and bars, very quiet location',
      rating: 9.0,
      dateTxt: '21 May, 2019',
    ),
  ];

  static List<HotelListData> romeList = [
    HotelListData(
        imagePath:
            'assets/images/room_1.jpg assets/images/room_2.jpg assets/images/room_3.jpg',
        titleTxt: 'Triple-Sharing Room',
        perMonth: 180,
        dateTxt: 'Sleeps 3 people',
        roomData: RoomData(2, 2)),
    HotelListData(
        imagePath:
            'assets/images/room_4.jpg assets/images/room_5.jpg assets/images/room_6.jpg',
        titleTxt: 'Triple-Sharing + \nDouble-Bathroom Room',
        perMonth: 200,
        dateTxt: 'Sleeps 3 people + 2 Bathrooms',
        roomData: RoomData(3, 2)),
    HotelListData(
        imagePath:
            'assets/images/room_7.jpg assets/images/room_8.jpg assets/images/room_9.jpg',
        titleTxt: 'Quadraple-Sharing Room(Girls)',
        perMonth: 240,
        dateTxt: 'Sleeps 4 people + \n4 Bathrooms',
        roomData: RoomData(4, 4)),
    HotelListData(
        imagePath:
            'assets/images/room_10.jpg assets/images/room_11.jpg assets/images/room_12.jpg',
        titleTxt: 'Quadraple-Sharing Room(Boys)',
        perMonth: 240,
        dateTxt: 'Sleeps 4 people + \n4 Bathrooms',
        roomData: RoomData(4, 4)),
    HotelListData(
        imagePath:
            'assets/images/room_11.jpg assets/images/room_1.jpg assets/images/room_2.jpg',
        titleTxt: 'Hollywood Twin\nRoom',
        perMonth: 260,
        dateTxt: 'Sleeps 2 people + \n2 Bathroom + AC',
        roomData: RoomData(4, 4)),
  ];

  static List<HotelListData> hotelTypeList = [
    HotelListData(
      imagePath: Localfiles.hotel_Type_1,
      titleTxt: 'hotel_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_2,
      titleTxt: 'Backpacker_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_3,
      titleTxt: 'Resort_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_4,
      titleTxt: 'villa_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_5,
      titleTxt: 'apartment',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_6,
      titleTxt: 'guest_house',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_7,
      titleTxt: 'motel',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_8,
      titleTxt: 'accommodation',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_9,
      titleTxt: 'Bed_breakfast',
      isSelected: false,
    ),
  ];
  static List<HotelListData> lastsSearchesList = [
    HotelListData(
      imagePath: Localfiles.popular_4,
      titleTxt: 'Vashi',
      roomData: RoomData(1, 3),
      date: DateText(12, 22),
      dateTxt: '12 - 22 Dec',
    ),
    HotelListData(
      imagePath: Localfiles.popular_1,
      titleTxt: 'Ghansoli',
      roomData: RoomData(1, 3),
      date: DateText(12, 24),
      dateTxt: '12 - 24 Sep',
    ),
    HotelListData(
      imagePath: Localfiles.city_3,
      titleTxt: 'New York',
      roomData: RoomData(1, 3),
      date: DateText(20, 22),
      dateTxt: '20 - 22 Sep',
    ),
    HotelListData(
      imagePath: Localfiles.city_4,
      titleTxt: 'Tokyo',
      roomData: RoomData(12, 22),
      date: DateText(12, 22),
      dateTxt: '12 - 22 Nov',
    ),
    HotelListData(
      imagePath: Localfiles.city_5,
      titleTxt: 'Shanghai',
      roomData: RoomData(10, 15),
      date: DateText(10, 15),
      dateTxt: '10 - 15 Dec',
    ),
    HotelListData(
      imagePath: Localfiles.city_6,
      titleTxt: 'Moscow',
      roomData: RoomData(12, 14),
      date: DateText(12, 14),
      dateTxt: '12 - 14 Dec',
    ),
  ];
}
