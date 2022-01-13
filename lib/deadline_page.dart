import 'dart:ui';

import 'package:flutter/material.dart';
import './deadline_model.dart';
import './main_page.dart';

class DeadlinePage extends StatelessWidget {
  //const DeadlinePage({Key? key}) : super(key: key);
  final textFieldColor = const Color(0xFFC1D6D0);
  final TextEditingController titleController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  final TextEditingController startTController = TextEditingController();
  final TextEditingController endTController = TextEditingController();
  DeadlinePage({Key? key}) : super(key: key);

  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent, width: 0),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          filled: true,
          fillColor: textFieldColor,
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            'Deadline',
            style: TextStyle(
              color: Color(0xFF606060),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              getTextField(hint: "Title"),
              const SizedBox(
                height: 14,
              ),
              getTextField(hint: "Note"),
              const SizedBox(
                height: 14,
              ),
              getTextField(hint: "Start Time"),
              const SizedBox(
                height: 14,
              ),
              getTextField(hint: "End Time"),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      final String title = titleController.text;
                      final String note = noteController.text;
                      final String start = startTController.text;
                      final String end = endTController.text;

                      DeadlineModel deadline = DeadlineModel(
                          title: title,
                          note: note,
                          start: start,
                          end: end,
                          isCompleted: false);
                      deadlineBox.add(deadline);

                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(textFieldColor),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 14)),
                        textStyle: MaterialStateProperty.all(const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700))),
                    child: const Text("Save")),
              )
            ],
          ),
        )
            //   Container(
            //   color: const Color(0xFFC1D6D0),
            //   // decoration: const BoxDecoration(
            //   //     image: DecorationImage(
            //   //   image: AssetImage("assets/images/app_bg.jpeg"),
            //   //   fit: BoxFit.cover,
            //   //   opacity: 5.0,
            //   // )),
            //   // child: BackdropFilter(
            //   //   filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            //   //   child: Container(color: Colors.white.withOpacity(0.0)),
            //   // ),
            // )
            ));
  }
}
