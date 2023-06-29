import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/utils/function/launch_url.dart';
import 'package:booklyapp/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: "Free",
              backgroundColor: Colors.white,
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: ()  {
                launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                
              },
              text: getText(bookModel),
              fontsize: 15,
              backgroundColor: const Color(0xffEf8262),
              textcolor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
 String getText(BookModel bookModel) {
  if(bookModel.volumeInfo.previewLink==null){
    return "Not Avaliable" ;
  }else{
    return " Previews"; 

  }

  }
}
