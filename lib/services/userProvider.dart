import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProvider with ChangeNotifier {
  // User details
  String? name;
  String? program;
  String? height;
  String? weight;
  String? age;
  bool notificationEnabled = false;

  // Account and Other Menu lists
  List<Map<String, dynamic>> accountMenu = [];
  List<Map<String, dynamic>> otherMenu = [];

  // Initialize Firebase Firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Method to set user data after login
  Future<void> setUser(String userId) async {
    try {
      // Fetch user document
      DocumentSnapshot userDoc = await _firestore.collection('users').doc(userId).get();

      // Set user details
      name = userDoc['name'];
      program = userDoc['program'];
      height = userDoc['height'];
      weight = userDoc['weight'];
      age = userDoc['age'];
      notificationEnabled = userDoc['notificationEnabled'];

      // Fetch account menu items
      QuerySnapshot accountMenuSnapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('accountMenu')
          .get();
      accountMenu = accountMenuSnapshot.docs.map((doc) {
        return {
          'image': doc['image'],
          'name': doc['name'],
          'tag': doc['tag']
        };
      }).toList();

      // Fetch other menu items
      QuerySnapshot otherMenuSnapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('otherMenu')
          .get();
      otherMenu = otherMenuSnapshot.docs.map((doc) {
        return {
          'image': doc['image'],
          'name': doc['name'],
          'tag': doc['tag']
        };
      }).toList();

      // Notify listeners to update UI
      notifyListeners();
    } catch (e) {
      print('Error fetching user data: $e');
    }
  }

  // Method to update notification setting
  void toggleNotification(bool enabled) {
    notificationEnabled = enabled;
    notifyListeners();
    // You can also update this in the database if you want to persist it
  }
}
