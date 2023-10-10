import 'package:flutter/material.dart';
import 'package:pg_5/routes/route_names.dart';
import 'package:pg_5/utils/localfiles.dart';
import 'package:pg_5/widgets/common_button.dart';
import 'package:provider/provider.dart';
import 'package:pg_5/providers/authentication.dart';
import 'package:pg_5/utils/themes.dart';

class ProfileScreen extends StatefulWidget {
  final AnimationController animationController;

  const ProfileScreen({Key? key, required this.animationController})
      : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color(0xFFF7F7F7),
              pinned: true,
              snap: true,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                      color: AppTheme.primaryTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          // bgColor: Color(0xFFF7F7F7),
        ],
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 20, top: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                // CustomImage(
                // profile["image"]!,
                // width: 80,
                // height: 80,
                // radius: 50,
                // ),
                // Image(image: Image.file(file))
                CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=',
                    scale: 0.1,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Sachin",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "+91 70399 64702",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          CommonButton(
              buttonText: "General Setting",
              // buttonTextWidget: Icons.settings,
              backgroundColor: Colors.greenAccent,
              onTap: () {}),
          SizedBox(height: 30),
          CommonButton(
              buttonText: "Bookings",
              // leadingIcon: Icons.bookmark_border,
              backgroundColor: Colors.greenAccent,
              onTap: () {}),
          SizedBox(height: 30),
          CommonButton(
              buttonText: "Favorites",
              // leadingIcon: Icons.favorite,
              backgroundColor: Colors.greenAccent,
              onTap: () {}),
          SizedBox(height: 30),
          CommonButton(
              buttonText: "Privacy",
              // leadingIcon: Icons.privacy_tip_outlined,
              backgroundColor: Colors.greenAccent,
              onTap: () {}),
          SizedBox(height: 30),
          CommonButton(
            buttonText: "Log Out",
            // leadingIcon: Icons.logout_outlined,
            backgroundColor: Colors.grey.shade400,
            onTap: () async {
              String? check = await Authentication().signOutUser();
              NavigationServices(context).gotoIntroductionScreen();
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

//   showConfirmLogout() {
//     showCupertinoModalPopup(
//       context: context,
//       builder: (context) => CupertinoActionSheet(
//         message: Text("Would you like to log out?"),
//         actions: [
//           CupertinoActionSheetAction(
//             onPressed: () {},
//             child: Text(
//               "Log Out",
//               style: TextStyle(color: actionColor),
//             ),
//           )
//         ],
//         cancelButton: CupertinoActionSheetAction(
//           child: Text("Cancel"),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//     );
//   }
// }
