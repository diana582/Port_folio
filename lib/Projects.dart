import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'package:url_launcher/url_launcher.dart';
class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  ScrollController controller = ScrollController();

  // Sample project data
  List<ProjectData> projects = [
    ProjectData(
      head: 'TO-DO App',
      image: 'https://cdn.dribbble.com/userupload/4111131/file/original-df34c8066f3a56c237534ecc1e8772e7.jpeg?resize=1024x678',
      sub: 'Flutter based mobile application for organizing, adding, deleting works',
      url: 'https://github.com/diana582/To-Do-App.git'
    ),
    ProjectData(
      head: 'Exam seating arrangement',
      image: 'https://cdn.dribbble.com/users/563897/screenshots/7711051/media/249ab189ab7bf25e0d3e74512181d124.png?resize=1000x750&vertical=center',
      sub: 'A website for college for producing exam seating arrangement and backend was done using firebase',
      url: 'https://github.com/diana582/Exam-Seating-Arrangement-CSVfile.git'
    ),
    ProjectData(
      head: 'Tution App',
      image: 'https://cdn.dribbble.com/userupload/8043872/file/original-e6c126924dee7c5a748945323057b20c.png?resize=1024x768',
      sub: 'An app for a tution class',
      url: ''
    ),
    ProjectData(
      head: 'Point-of-Service',
      image: 'https://cdn.dribbble.com/userupload/3261383/file/original-e444aac3525e6826bcde874892265c75.png?resize=1024x768&vertical=center',
      sub: 'A website for restaurants',
      url: 'https://github.com/diana582/Project-POS_main.git'
    ),
     ProjectData(
       head: 'CNN image classfication',
      image: 'https://cdn.dribbble.com/userupload/6677152/file/original-5168d7cee6eed43fcdce6f4ed6566e75.png?resize=1024x768',
      sub: 'Image classification for fashion MINIST dataset from tensorflow',
      url: 'https://github.com/diana582/Fashion_minist_CNN_Image_Classification.git'
     ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 193, 33),
      body: Container(
        child: Stack(
          children: [
            WebSmoothScroll(
              controller: controller,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 43,
                      ),
                      Text(
                        'Check out my latest projects',
                        style: GoogleFonts.vinaSans(
                          fontSize: 80,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Click on projects to view the code',
                        style: GoogleFonts.josefinSans(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width > 1300
                              ? MediaQuery.of(context).size.width * 0.65
                              : MediaQuery.of(context).size.width > 1200
                                  ? MediaQuery.of(context).size.width * 0.75
                                  : MediaQuery.of(context).size.width * 0.85,
                          child: BootstrapRow(
                            height: 361,
                            children: projects.map((project) {
                              return BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: Container(
                                  width: 370,
                                  child: BlogCard(
                                    head: project.head,
                                    image: project.image,
                                    sub: project.sub,
                                    url: project.url,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogCard extends StatefulWidget {
  final String image;
  final String head;
  final String sub;
  final String url;
  

  const BlogCard({
    super.key,
    required this.image,
    required this.sub,
    required this.head, required this.url,
  });

  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () {
        launch(widget.url); // Launch the URL when the card is clicked
      },
    child: Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 351 + 10.0,
      width: 370,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.white70,
                image: DecorationImage(
                    image: NetworkImage(widget.image), fit: BoxFit.cover)),
            height: 231,
            width: 370,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              widget.head,
              maxLines: 1,
              style: GoogleFonts.oswald(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: 370,
            child: Text(
              widget.sub,
              maxLines: 3,
              style: GoogleFonts.ubuntu(
                  height: 1.65,
                  fontSize: 14,
                  color: const Color.fromARGB(255, 66, 64, 64),
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ),
    );
  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}


class ProjectData {
  final String image;
  final String head;
  final String sub;
  final String url;
  ProjectData({required this.image, required this.sub, required this.head,
  required this.url,});
}
