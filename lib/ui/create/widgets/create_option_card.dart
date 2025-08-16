
import 'package:flutter/material.dart';

class CreateOptionCard extends StatelessWidget {
  const CreateOptionCard({
    super.key,
    required this.title,
    required this.iconData,
    required this.onTap
  });

  final String title;
  final IconData iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final TextStyle cardTitleStyle = Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600);

    return Card( 
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          leading: Icon(iconData, size: 32),
          title: Text(title, style: cardTitleStyle),
          trailing: Icon(Icons.chevron_right)
        ),
      ),
    );
  }
}