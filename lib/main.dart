// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     /// Create application that uses Cupertino (iOS) design.
//     return CupertinoApp(
//       title: 'Pixabay API Search App',
//       debugShowCheckedModeBanner: false,

//       /// Basic visual layout structure for single page iOS app.
//       home: CupertinoPageScaffold(
//         child: SafeArea(
//           child: AppLayout(),
//         ),
//       ),
//     );
//   }
// }

// class AppLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     /// initialise business logic component (BLoC) for managing application state
//     /// TODO - clean up block on dispose of widget
//     PixabaySearchBloc pixabaySearchBloc = PixabaySearchBloc();

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       mainAxisSize: MainAxisSize.max,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border(
//                     bottom: BorderSide(
//                       color: Colors.grey[400],
//                     ),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     /// Page title
//                     Text('Pixabay'),

//                     /// Page search input
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: CupertinoSearchTextField(
//                         onChanged: (value) {
//                           pixabaySearchBloc.getPictures(value);
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),

//         /// Scrollable search results
//         Expanded(child: Container())
//       ],
//     );
//   }
// }
