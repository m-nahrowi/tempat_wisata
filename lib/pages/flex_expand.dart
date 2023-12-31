import 'package:flutter/material.dart';

// void main() {
//   runApp(const FlexExpand());
// }

class FlexExpand extends StatelessWidget {
  // const FlexExpand({super.key});

  final String message;
  const FlexExpand(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flex dan Expand"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: const [
                  ExpandedWidget(),
                  FlexibleWidget(),
                ],
              ),
              Row(
                children: const [
                  ExpandedWidget(),
                  ExpandedWidget(),
                ],
              ),
              Row(
                children: const [
                  FlexibleWidget(),
                  FlexibleWidget(),
                ],
              ),
              Row(
                children: const [
                  FlexibleWidget(),
                  ExpandedWidget(),
                ],
              ),
              Text(
                message + ', sukses data terkirim',
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Column(
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Kembali"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

// Expanded
class ExpandedWidget extends StatelessWidget {
  // const ExpandedWidget({super.key});
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Expanded',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
    ));
  }
}

// Flexible
class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              border: Border.all(color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Flexible',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 24,
              ),
            ),
          )),
    );
  }
}
