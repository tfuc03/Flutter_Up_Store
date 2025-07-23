// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirebaseTestPage extends StatelessWidget {
//   const FirebaseTestPage({super.key});

//   void _pushData() async {
//     await FirebaseFirestore.instance.collection('test').add({
//       'message': '🔥 Kết nối Firebase thành công!',
//       'time': DateTime.now(),
//     });
//     debugPrint("✅ Dữ liệu đã được push lên Firebase Firestore");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Test Firebase Firestore')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _pushData,
//           child: const Text('Gửi dữ liệu lên Firestore'),
//         ),
//       ),
//     );
//   }
// }
