import 'package:clean_architectue/features/home/presentation/views/widgets/book_details/books_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BooksDetailsViewBody()));
  }
}
