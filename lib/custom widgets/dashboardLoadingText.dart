import 'package:flutter/material.dart';

class DashboardLoadingText extends StatelessWidget {
  final isRequest;
  const DashboardLoadingText({super.key, this.isRequest});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          isRequest
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Total Request: '), Text('...')],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Total Service: '), Text('...')],
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Pending: '), Text('...')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Accepted: '), Text('...')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Ongoing: '), Text('...')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Completed: '), Text('...')],
          ),
        ],
      ),
    );
  }
}
