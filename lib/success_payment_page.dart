// // // // // // success_payment_page.dart

// // // // // import 'package:flutter/material.dart';

// // // // // class SuccessPaymentPage extends StatelessWidget {
// // // // //   const SuccessPaymentPage({super.key});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       backgroundColor: Colors.white,
// // // // //       appBar: AppBar(
// // // // //         title: const Text('Payment Successful'),
// // // // //         backgroundColor: Colors.green,
// // // // //       ),
// // // // //       body: Center(
// // // // //         child: Padding(
// // // // //           padding: const EdgeInsets.all(24.0),
// // // // //           child: Column(
// // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // //             children: [
// // // // //               const Icon(Icons.check_circle, size: 100, color: Colors.green),
// // // // //               const SizedBox(height: 24),
// // // // //               const Text(
// // // // //                 'Your payment was successful!',
// // // // //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// // // // //                 textAlign: TextAlign.center,
// // // // //               ),
// // // // //               const SizedBox(height: 16),
// // // // //               const Text(
// // // // //                 'Thank you for your reservation.\nYou can now enjoy your workspace.',
// // // // //                 style: TextStyle(fontSize: 16),
// // // // //                 textAlign: TextAlign.center,
// // // // //               ),
// // // // //               const SizedBox(height: 32),
// // // // //               ElevatedButton(
// // // // //                 onPressed: () {
// // // // //                   Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
// // // // //                 },
// // // // //                 style: ElevatedButton.styleFrom(
// // // // //                   backgroundColor: Colors.green,
// // // // //                   padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
// // // // //                 ),
// // // // //                 child: const Text('Go to Home'),
// // // // //               )
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // lib/success_payment_page.dart

// // // // import 'package:flutter/material.dart';

// // // // class SuccessPaymentPage extends StatelessWidget {
// // // //   /// Add this field so the router can inject the query-param
// // // //   final String? paymentRef;

// // // //   const SuccessPaymentPage({
// // // //     Key? key,
// // // //     this.paymentRef,
// // // //   }) : super(key: key);

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: Colors.white,
// // // //       body: Center(
// // // //         child: Padding(
// // // //           padding: const EdgeInsets.all(24.0),
// // // //           child: Column(
// // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // //             children: [
// // // //               const Icon(Icons.check_circle, size: 100, color: Colors.green),
// // // //               const SizedBox(height: 24),
// // // //               const Text(
// // // //                 'Your payment was successful!',
// // // //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// // // //                 textAlign: TextAlign.center,
// // // //               ),

// // // //               // If you want to show the reference:
// // // //               if (paymentRef != null) ...[
// // // //                 const SizedBox(height: 16),
// // // //                 Text(
// // // //                   'Reference: $paymentRef',
// // // //                   style: const TextStyle(fontSize: 16),
// // // //                 ),
// // // //               ],

// // // //               const SizedBox(height: 32),
// // // //               // ElevatedButton(
// // // //               //   onPressed: () {
// // // //               //     Navigator.pushNamedAndRemoveUntil(
// // // //               //       context,
// // // //               //       '/home',
// // // //               //       (route) => false,
// // // //               //     );
// // // //               //   },
// // // //               //   style: ElevatedButton.styleFrom(
// // // //               //     backgroundColor: Colors.green,
// // // //               //     padding:
// // // //               //         const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
// // // //               //   ),
// // // //               //   child: const Text('Go to Home'),
// // // //               // )
// // // //               // ElevatedButton(
// // // //               //   onPressed: () {
// // // //               //     Navigator.of(context, rootNavigator: true)
// // // //               //         .pushNamedAndRemoveUntil(
// // // //               //       '/home',
// // // //               //       (route) => false,
// // // //               //     );
// // // //               //   },
// // // //               //   child: const Text('Go to Home'),
// // // //               // ),

// // // //               // inside SuccessPaymentPage’s “Go to Home” button:
// // // //               // ElevatedButton(
// // // //               //   onPressed: () {
// // // //               //     Navigator.of(context, rootNavigator: true)
// // // //               //         .pushNamedAndRemoveUntil('/home', (route) => false);
// // // //               //   },
// // // //               //   child: const Text('Go to Home'),
// // // //               // ),

// // // //               ElevatedButton(
// // // //                 onPressed: () {
// // // //                   // ← no rootNavigator here
// // // //                   Navigator.of(context)
// // // //                       .pushNamed('/home');
// // // //                 },
// // // //                 child: const Text('Go to Home'),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';

// // // class SuccessPaymentPage extends StatelessWidget {
// // //   final String? paymentRef;

// // //   const SuccessPaymentPage({
// // //     Key? key,
// // //     this.paymentRef,
// // //   }) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white,
// // //       body: Center(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(24.0),
// // //           child: Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: [
// // //               const Icon(Icons.check_circle, size: 100, color: Colors.green),
// // //               const SizedBox(height: 24),
// // //               const Text(
// // //                 'Your payment was successful!',
// // //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// // //                 textAlign: TextAlign.center,
// // //               ),
// // //               if (paymentRef != null) ...[
// // //                 const SizedBox(height: 16),
// // //                 Text(
// // //                   'Reference: $paymentRef',
// // //                   style: const TextStyle(fontSize: 16),
// // //                 ),
// // //               ],
// // //               const SizedBox(height: 32),
// // //               // ElevatedButton(
// // //               //   onPressed: () {
// // //               //     // Navigate to home and remove all previous routes (including WebView)
// // //               //     Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
// // //               //       '/home',
// // //               //       (route) => false,
// // //               //     );
// // //               //   },
// // //               //   style: ElevatedButton.styleFrom(
// // //               //     backgroundColor: Colors.green,
// // //               //     padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
// // //               //   ),
// // //               //   child: const Text('Go to Home'),
// // //               // ),
// // //               ElevatedButton(
// // //                 onPressed: () {
// // //                   // ← replace your existing Navigator call with this:
// // //                   Navigator.of(context, rootNavigator: true)
// // //                       .pushNamedAndRemoveUntil(
// // //                     '/home',
// // //                     (Route<dynamic> route) => false,
// // //                   );
// // //                 },
// // //                 style: ElevatedButton.styleFrom(
// // //                   backgroundColor: Colors.green,
// // //                   padding:
// // //                       const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
// // //                 ),
// // //                 child: const Text('Go to Home'),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // class SuccessPaymentPage extends StatelessWidget {
  
// //   String? userId;
// //   final String? paymentRef;
// //   final String? subId;
// //   final String? startDate;
// //   final String? endDate;

// //   const SuccessPaymentPage({
// //     Key? key,
// //     this.paymentRef,
// //     this.subId,
// //     this.startDate,
// //     this.endDate,
// //   }) : super(key: key);

// //   void initState() {
// //     super.initState();
// //     // _generateTimeSlots();
// //     _initializePreferences();
// //     // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
// //     //   statusBarColor: Colors.transparent,
// //     //   statusBarIconBrightness: Brightness.dark,
// //     // ));
// //     // print(widget.reservations);
// //   }

// //   // @override
// //   // void dispose() {
// //   //   _pageController.dispose();
// //   //   super.dispose();
// //   // }

// //   Future<void> _initializePreferences() async {
// //     setState(() => isLoading = true);
// //     prefs = await SharedPreferences.getInstance();
// //     final userJson = prefs.getString('user');

// //     setState(() {
// //       if(userJson!=null){
// //         final UserMap=jsonDecode(userJson);
// //         userId=UserMap['_id'];
// //         print("idd $userId");
// //       }


// //       isLoading = false;
// //     });
// //     if (userId != null) {
// //       await _fetchUserPoints();
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Center(
// //         child: Padding(
// //           padding: const EdgeInsets.all(24.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               const Icon(Icons.check_circle, size: 100, color: Colors.green),
// //               const SizedBox(height: 24),
// //               const Text(
// //                 'Your payment was successful!',
// //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// //                 textAlign: TextAlign.center,
// //               ),
// //               const SizedBox(height: 24),
// //               if (paymentRef != null) ...[
// //                 Text(
// //                   'Payment Reference: $paymentRef',
// //                   style: const TextStyle(fontSize: 16),
// //                 ),
// //                 const SizedBox(height: 8),
// //               ],
// //               if (subId != null) ...[
// //                 Text(
// //                   'Subscription ID: $subId',
// //                   style: const TextStyle(fontSize: 16),
// //                 ),
// //                 const SizedBox(height: 8),
// //               ],
// //               if (startDate != null) ...[
// //                 Text(
// //                   'Start Date: $startDate',
// //                   style: const TextStyle(fontSize: 16),
// //                 ),
// //                 const SizedBox(height: 8),
// //               ],
// //               if (endDate != null) ...[
// //                 Text(
// //                   'End Date: $endDate',
// //                   style: const TextStyle(fontSize: 16),
// //                 ),
// //                 const SizedBox(height: 8),
// //               ],
// //               const SizedBox(height: 32),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   Navigator.of(context, rootNavigator: true)
// //                       .pushNamedAndRemoveUntil(
// //                     '/home',
// //                     (Route<dynamic> route) => false,
// //                   );
// //                 },
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.green,
// //                   padding:
// //                       const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
// //                 ),
// //                 child: const Text('Go to Home'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SuccessPaymentPage extends StatefulWidget {
//   final String? paymentRef;
//   final String? subId;
//   final String? startDate;
//   final String? endDate;

//   const SuccessPaymentPage({
//     Key? key,
//     this.paymentRef,
//     this.subId,
//     this.startDate,
//     this.endDate,
//   }) : super(key: key);

//   @override
//   State<SuccessPaymentPage> createState() => _SuccessPaymentPageState();
// }

// class _SuccessPaymentPageState extends State<SuccessPaymentPage> {
//   String? userId;
//   bool isLoading = false;
//   late SharedPreferences prefs;

//   @override
//   void initState() {
//     super.initState();
//     _initializePreferences();
//   }

//   Future<void> _initializePreferences() async {
//     setState(() => isLoading = true);
//     prefs = await SharedPreferences.getInstance();
//     final userJson = prefs.getString('user');

//     if (userJson != null) {
//       final userMap = jsonDecode(userJson);
//       userId = userMap['_id'];
//       print("User ID: $userId");
//     }

//     setState(() => isLoading = false);

//     if (userId != null) {
//       await _fetchUserPoints();
//     }
//   }

//   Future<void> _fetchUserPoints() async {
//     // implement your logic here
//     print("Fetching user points for $userId");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Icon(Icons.check_circle,
//                         size: 100, color: Colors.green),
//                     const SizedBox(height: 24),
//                     const Text(
//                       'Your payment was successful!',
//                       style:
//                           TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 24),
//                     if (widget.paymentRef != null) ...[
//                       Text(
//                         'Payment Reference: ${widget.paymentRef}',
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 8),
//                     ],
//                     if (widget.subId != null) ...[
//                       Text(
//                         'Subscription ID: ${widget.subId}',
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 8),
//                     ],
//                     if (widget.startDate != null) ...[
//                       Text(
//                         'Start Date: ${widget.startDate}',
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 8),
//                     ],
//                     if (widget.endDate != null) ...[
//                       Text(
//                         'End Date: ${widget.endDate}',
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 8),
//                     ],
//                     const SizedBox(height: 32),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.of(context, rootNavigator: true)
//                             .pushNamedAndRemoveUntil(
//                           '/home',
//                           (Route<dynamic> route) => false,
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 32, vertical: 14),
//                       ),
//                       child: const Text('Go to Home'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//     );
//   }
// }


import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class SuccessPaymentPage extends StatefulWidget {
  final String? paymentRef;
  final String? subId;
  final String? startDate;
  final String? endDate;

  const SuccessPaymentPage({
    Key? key,
    this.paymentRef,
    this.subId,
    this.startDate,
    this.endDate,
  }) : super(key: key);

  @override
  State<SuccessPaymentPage> createState() => _SuccessPaymentPageState();
}

class _SuccessPaymentPageState extends State<SuccessPaymentPage> {
  String? userId;
  bool isLoading = true;
  String? verifyError;

  @override
  void initState() {
    super.initState();
    _initializeAndVerify();
  }

  Future<void> _initializeAndVerify() async {
    // 1️⃣ Load userId
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString('user');
    if (userJson != null) {
      final userMap = jsonDecode(userJson) as Map<String, dynamic>;
      userId = userMap['_id'] as String?;
    }

    // 2️⃣ Call your verify endpoint
    if (userId != null && widget.paymentRef != null) {
      await _callVerifyEndpoint();
    }

    setState(() => isLoading = false);
  }

  Future<void> _callVerifyEndpoint() async {
    final paymentId = widget.paymentRef!;
    final subId    = widget.subId;
    final start    = widget.startDate;
    final end      = widget.endDate;
    final idUser   = userId;

    final uri = Uri.parse(
      'http://localhost:8000/ELACO/subcription/verify/' +
      Uri.encodeComponent(paymentId) +
      '?idUser=${Uri.encodeComponent(idUser!)}'
      '&subId=${Uri.encodeComponent(subId!)}'
      '&start_date=${Uri.encodeComponent(start!)}'
      '&end_date=${Uri.encodeComponent(end!)}'
    );

    try {
      final response = await http.get(uri);
      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}: ${response.body}');
      }
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['status'] != 'success') {
        throw Exception(data['message'] ?? 'Verification failed');
      }
      // ✅ verified successfully
      print('✅ Subscription verified: $data');
    } catch (e) {
      print('⚠️ verify error: $e');
      verifyError = e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle, size: 100, color: Colors.green),
              const SizedBox(height: 24),
              const Text(
                'Your payment was successful!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              if (widget.paymentRef != null) ...[
                Text('Payment Reference: ${widget.paymentRef}',
                    style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
              ],
              if (widget.subId != null) ...[
                Text('Subscription ID: ${widget.subId}',
                    style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
              ],
              if (widget.startDate != null) ...[
                Text('Start Date: ${widget.startDate}',
                    style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
              ],
              if (widget.endDate != null) ...[
                Text('End Date: ${widget.endDate}',
                    style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
              ],
              if (verifyError != null) ...[
                const SizedBox(height: 16),
                Text(
                  'Verification error:\n$verifyError',
                  style: const TextStyle(fontSize: 14, color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true)
                      .pushNamedAndRemoveUntil('/home', (r) => false);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                ),
                child: const Text('Go to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
