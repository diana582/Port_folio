import 'package:flutter/material.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'package:google_fonts/google_fonts.dart';
class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  ScrollController controller = ScrollController();
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 188, 192),
      body: Container(
        
        


        child: Stack(
          children: [
            WebSmoothScroll(controller: controller, 
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                          height: 43,
                    ),
                      Text(
                        'Feel free to contact me at anytime',
                         style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                         ),
                      ),
                      SizedBox(
                           height: 8,
                      ),
                    Text(
                        'Get in touch With Me',
                         style: GoogleFonts.vinaSans(
                          fontSize: 80,
                          color: Colors.black,
                          fontWeight: FontWeight.w700
                         ),
                      ), 
                      SizedBox(
                        height: 50,
                      ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MessageMe(),
                      SizedBox(
                        width: 45,
                      ),
                      ContactInfo(),
                    ],
                   )
                      
                  ],
                ),
              ) ,
            ))
          ],

        ),

       ),
    );
  }
}
class MessageMe extends StatefulWidget {
  const MessageMe({super.key});

  @override
  State<MessageMe> createState() => _MessageMeState();
}

class _MessageMeState extends State<MessageMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width > 1000
            ? MediaQuery.of(context).size.width * 0.4
            :MediaQuery.of(context).size.width * 0.65,
            child: Column(
              children: [
                Text(
                  "Message me",
                  style: GoogleFonts.inconsolata(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomTextFormField(hint: "Name", 
                    max: 1, ),
                    SizedBox(
                      width: 25,
                    ),
                    CustomTextFormField(hint: "e-mail", 
                    max: 1),
                    
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  child: CustomTextFormField(hint: "Subject", max: 25,
                  ),

                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 200,
                  child: CustomTextFormField(hint: "Message", 
                  max: 25),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black
                    ),
                    child: Center(
                      child: Text(
                        "Send Message",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                   ),
                )

              ],
            ),

    );
  }
}


class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width > 1000
            ? MediaQuery.of(context).size.width * 0.3
            :MediaQuery.of(context).size.width * 0.65,
            child: Container(
              child: Column(
                children: [
                  Text('Contact Info',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),),
                    SizedBox(
                      height: 15,
                    ),
                    //Text('Always available for freelance work if right project comes along',
                   // style: GoogleFonts.inconsolata(fontSize: 20,
                   // color: const Color.fromARGB(255, 60, 59, 59),
                   // fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 15,
                    ),
                    ContactCard(icon: Icons.assignment_ind_outlined, 
                    sub: "Diana Dcruz", 
                    head: "Name"),
                    ContactCard(icon: Icons.location_on, 
                    sub: "Kottayam,Kerala", 
                    head: "Location"),
                    ContactCard(icon: Icons.phone_android_outlined, 
                    sub: "7356732344", 
                    head: "Call me"),
                    ContactCard(icon: Icons.send_outlined, 
                    sub: "dianadcruzt@gmail.com", 
                    head: "e-mail me"),
                ],
              ),
            ),
    );
  }
}


class CustomTextFormField extends StatefulWidget {
final String hint;
final int max;

  const CustomTextFormField({super.key, required this.hint, required this.max});

//const CustomTextFormField({required this.hint, required this.max});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: Container(
      color: Color.fromARGB(255, 139, 137, 137),
      child: TextFormField(
        maxLines: widget.max ?? 1,
        scrollPadding: EdgeInsets.all(0),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
           borderSide: BorderSide(color: Colors.tealAccent) ,
           

          ),
          hintText: widget.hint,
          hintStyle: GoogleFonts.inconsolata(
            color: Color(0xff6c6c6c),
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
          prefix: Container(width: 30,)
        ), ),),
    );
  }
}

class ContactCard extends StatefulWidget {
  final String head;
  final String sub;
  final IconData icon;
  const ContactCard({super.key, required this.icon,required this.sub,required this.head});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width >1000
      ? MediaQuery.of(context).size.width *0.3
      :MediaQuery.of(context).size.width *0.65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 35,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 3,
            color: Color(0xff161616),
          ),
          SizedBox(
            width: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width >1000
      ? MediaQuery.of(context).size.width *0.2
      :MediaQuery.of(context).size.width *0.5 - 8,
            child: Column(
              children: [
                 Text(
                   widget.head,
                   style: GoogleFonts.josefinSans(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                   ),
                 ),
                 Text(
                   widget.sub,
                   style: GoogleFonts.preahvihear(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 53, 52, 52),
                    fontWeight: FontWeight.w700
                   ),
                 ),
              ],
            ),
          )
        ],
      ),
    );
  }
}