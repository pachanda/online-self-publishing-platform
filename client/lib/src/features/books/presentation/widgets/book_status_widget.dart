import 'package:client/src/features/books/domain/book.dart';
import 'package:flutter/material.dart';

import '../../../../shared/constants.dart';
import '../../../localization/application/ll.dart';
import 'info_label_widget.dart';

class BookStatusWidget extends StatelessWidget {
  const BookStatusWidget({
    super.key,
    required this.status
  });

  final BookStatus status;

  @override
  Widget build(BuildContext context) {
    final ll = curLl(context)!;
    switch (status) {
      case BookStatus.completed: return InfoLabelWidget(
        labelText: ll.book.completed,
        color: AppColors.completed
      );
      case BookStatus.inProgress: return InfoLabelWidget(
        labelText: ll.book.inProgress, 
        color: AppColors.inProgress(context)
      );
      case BookStatus.abandoned: return InfoLabelWidget(
        labelText: ll.book.abandoned,
        color: AppColors.abandoned
      );
    }
  }
}