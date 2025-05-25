import 'package:flutter/material.dart';
import 'package:penaislam_app/ui/common/app_colors.dart';
import 'package:penaislam_app/ui/common/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';

class NoticeSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;

  const NoticeSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            request.title ?? 'Notice',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          verticalSpaceMedium,
          Text(
            request.description ?? 'Something important is happening',
            style: const TextStyle(fontSize: 16, color: kcMediumGrey),
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => completer(SheetResponse(confirmed: true)),
                child: const Text(
                  'OK',
                  style: TextStyle(color: kcPrimaryColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
