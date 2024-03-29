import 'package:flutter/material.dart';
import 'package:main_portfolio_flutter/constants/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  Future<void> sendEmail({
    required String email,
    String subject = "test subject",
    String body = "test body",
  }) async {
    String mail = "mailto:$email?subject=$subject&body=${Uri.encodeFull(body)}";
    if (await canLaunchUrl(Uri.parse(mail))) {
      await launchUrl(Uri.parse(mail));
    } else {
      throw Exception("Unable to open the email");
    }
  }

  Future<void> sendEmailInBrowser({
    required String email,
    String subject = "test subject",
    String body = "test body",
  }) async {
    String gmailUrl =
        "https://mail.google.com/mail/?view=cm&to=$email&su=$subject&body=${Uri.encodeFull(body)}";
    if (await canLaunchUrl(Uri.parse(gmailUrl))) {
      await launchUrl(Uri.parse(gmailUrl));
    } else {
      throw Exception("Unable to open Gmail in browser");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var inputDecoration = InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.white,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: AppConstants.appbgColor,
      body: Center(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: size.height,
            width: 800,
            child: Padding(
              padding: size.width <= 800
                  ? const EdgeInsets.symmetric(horizontal: 20)
                  : const EdgeInsets.symmetric(),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Let\'s',
                            style: TextStyle(
                              fontSize: 40,
                              color: AppConstants.whiteColor,
                            ),
                          ),
                          const TextSpan(
                            text: ' Connect.',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Flexible(
                    //       child: TextFormField(
                    //         style: TextStyle(color: AppConstants.whiteColor),
                    //         decoration: textFieldDecoration(
                    //           hintText: 'Name',
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(width: 10),
                    //     Flexible(
                    //       child: TextFormField(
                    //         style: TextStyle(color: AppConstants.whiteColor),
                    //         decoration: textFieldDecoration(
                    //           hintText: 'Email',
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 20),
                    TextFormField(
                      style: TextStyle(color: AppConstants.whiteColor),
                      controller: subjectController,
                      decoration: textFieldDecoration(
                        hintText: 'Subject',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      minLines: 5,
                      maxLines: 7,
                      style: TextStyle(color: AppConstants.whiteColor),
                      controller: messageController,
                      decoration: InputDecoration(
                        hintText: 'Message',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async {
                        sendEmail(
                          email: 'ayush.kharwal17@gmail.com',
                          subject: subjectController.text,
                          body: messageController.text,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppConstants.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: AppConstants.whiteColor),
                        ),
                      ),
                      child: const Text(
                        'Let\'s Talk',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration textFieldDecoration({
    String? hintText,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: AppConstants.greyColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.white,
        ),
      ),
    );
  }
}
