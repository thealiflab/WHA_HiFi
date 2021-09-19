import 'package:flutter/material.dart';

class SingleAppointmentCard extends StatelessWidget {
  const SingleAppointmentCard({
    required this.nameLabel,
    required this.appointmentTime,
    Key? key,
  }) : super(key: key);

  final String nameLabel;
  final String appointmentTime;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    "assets/person.png",
                  ),
                ),
                Text(
                  appointmentTime,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              nameLabel,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
