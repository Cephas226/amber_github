import 'package:ambulanceHailerDriver/models/addresse.dart';
import 'package:flutter/cupertino.dart';

class AppData extends ChangeNotifier
{
  Address pickUpLocation;
  Address dropOffLocation;
   void updatePickupLocationAddress(Address pickAddress){
     pickUpLocation=pickAddress;
     notifyListeners();
   }
  void updateDropOffLocationAddress(Address pickAddress){
    dropOffLocation=pickAddress;
    notifyListeners();
  }
}
