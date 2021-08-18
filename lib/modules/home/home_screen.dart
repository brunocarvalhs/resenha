import 'package:flutter/material.dart';
import 'package:resenha/shared/models/user_model.dart';
import 'package:resenha/modules/home/widgets/app_bar_home_widget.dart';
import 'package:resenha/modules/home/widgets/floating_button_widget.dart';
import 'package:resenha/shared/widgets/event_list/event_list_widget.dart';

class HomeScreen extends StatefulWidget {
  final UserModel user;

  const HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHomeWidget(
        user: widget.user,
        routerProfile: () => Navigator.pushNamed(
          context,
          "/profile",
          arguments: widget.user,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: EventListWidget(
                key: UniqueKey(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingButtonWidget(
        icon: Icons.add,
        onTap: () => Navigator.pushNamed(
          context,
          "/event/new",
        ),
      ),
    );
  }
}
