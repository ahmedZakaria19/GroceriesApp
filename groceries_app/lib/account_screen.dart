import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: 20),
                AccountHeader(),

                SizedBox(height: 30),
                Divider(),

                SizedBox(height: 10),
                AccountRow(
                  text: "Orders",
                  iconData: Icons.shopping_bag_outlined,
                ),
                SizedBox(height: 10),
                Divider(),

                SizedBox(height: 10),
                AccountRow(text: "My Details", iconData: Icons.list_alt),
                SizedBox(height: 10),
                Divider(),

                SizedBox(height: 10),
                AccountRow(
                  text: "Delivery Address",
                  iconData: Icons.location_on_outlined,
                ),
                SizedBox(height: 10),
                Divider(),

                SizedBox(height: 10),
                AccountRow(text: "Payment Methods", iconData: Icons.add_card),
                SizedBox(height: 10),
                Divider(),

                SizedBox(height: 10),
                AccountRow(text: "Promo Code", iconData: Icons.sell_outlined),
                SizedBox(height: 10),
                Divider(),

                SizedBox(height: 10),
                AccountRow(
                  text: "Notifications",
                  iconData: Icons.notifications_active_outlined,
                ),
                SizedBox(height: 10),
                Divider(),

                SizedBox(height: 10),
                AccountRow(text: "Help", iconData: Icons.help_outline),
                SizedBox(height: 10),
                Divider(),

                SizedBox(height: 10),
                AccountRow(text: "About", iconData: Icons.info_outline),
                SizedBox(height: 10),
                Divider(),

                SizedBox(height: 30),
                AccountButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AccountHeader extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/profile.png'),
          radius: 30,
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "Ahmed Zakaria",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 20,
                        color: Color(0xFF181725),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.edit, color: Color(0xFF53B175), size: 15),
                ],
              ),
              Text(
                "ahmed.m.zakaria111@gmail.com",
                style: TextStyle(overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 26),
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F2),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        children: [
          Icon(Icons.logout, color: Color(0xFF53B175)),
          // SizedBox(width: 100),
          Expanded(
            child: Center(
              child: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight(600),
                  color: Color(0xFF53B175),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AccountRow extends StatelessWidget {
  const AccountRow({super.key, required this.text, required this.iconData});
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData),
        SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF181725),
            fontWeight: FontWeight(600),
          ),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios, size: 16),
      ],
    );
  }
}
