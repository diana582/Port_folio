import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
class ResumeCard extends StatefulWidget {
  final String head;
  final List<CustomCard> educationData;
  final List<CustomCard> experienceData;
 
  const ResumeCard({super.key,required this.head
  ,required this.educationData,
    required this.experienceData,});

  @override
  State<ResumeCard> createState() => _ResumeCardState();
}

class _ResumeCardState extends State<ResumeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.head,
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
          
        ),
        SizedBox(
          height: 15,
        ),
      if (widget.head == "Education")
            Column(
              children: widget.educationData,
            ),
          if (widget.head == "Experience")
            Column(
              children: widget.experienceData,
            ),
          Container(
            height: 3.5,
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.7,
            color: Colors.black,
          ),
         
      ],
     ),
    );
  }
}
class CustomCard extends StatefulWidget {
  final String head;
  final String sub;
  final String sub2;
  const CustomCard({super.key,required this.head,required this.sub,required this.sub2});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width > 950
            ? MediaQuery.of(context).size.width * 0.35
            :MediaQuery.of(context).size.width * 0.7,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 50,
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        width: 7,
                        color: Colors.black,
                      ),
                      Positioned(top: 50,
                      left: 1,
                      child: Container(
                        height: 20,
                        width: 25,
                        color: Colors.black,
                      ),),
                      Positioned(
                        top: 53,
                      left: 19.5,
                      child: Transform.rotate(
                        angle: 45 * math.pi / 180,
                        child: Container(
                          
                          height: 14,
                          width: 14,
                          color: Colors.black,
                        ),
                      ),)
                    ],
                   ),
                ),
                Container(
                  width:  MediaQuery.of(context).size.width > 950
            ? MediaQuery.of(context).size.width * 0.35 - 60
            :MediaQuery.of(context).size.width * 0.7 - 65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   SizedBox(
                    height: 45,
                   ),
                   Text(
                    widget.head,
                    style: GoogleFonts.josefinSans(
                      fontSize: 26,
                      color: Colors.black
                    ),
                   ),
                   SizedBox(
                    height: 5,
                   ),
                  Text(
                    widget.sub,
                    style: GoogleFonts.preahvihear(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 50, 49, 49),
                      fontWeight: FontWeight.w300
                    ),
                   ),
                   SizedBox(
                    height: 15,
                   ) ,
                   Text(
                    widget.sub2,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color.fromARGB(255, 82, 80, 80),
                      fontWeight: FontWeight.w300
                    ),
                   ),
                   SizedBox(
                    height: 5,
                   )
              ],
            ),
                ),
                
              ],
            ),
    );
  }
}