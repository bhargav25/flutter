import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './models/instructor.dart';

class InstructorListPage extends StatefulWidget {
  @override
  _InstructorListPageState createState() => _InstructorListPageState();
}

class _InstructorListPageState extends State<InstructorListPage> {
  final instructors = allInstructors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6ED),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Santa Monica, CA',
                  style: GoogleFonts.tinos(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Best Surfing Instructors in Santa Monica, California!',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5E5B54),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                hintText: 'Search',
                hintStyle: GoogleFonts.sourceSansPro(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF5E5B54),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              childAspectRatio: 0.66,
              primary: false,
              children: <Widget>[
                ...instructors.map(
                  (e) {
                    return buildInstructorGrid(e);
                  },
                ).toList(),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildInstructorGrid(Instructor instructor) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 150.0,
              width: 100.0,
              color: Colors.transparent,
            ),
            Positioned(
              left: 30.0,
              top: 65.0,
              child: Container(
                height: 30.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.grey.withOpacity(0.75),
                      offset: Offset(5, 25),
                      spreadRadius: 12.0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 12.0,
              top: 15.0,
              child: Hero(
                tag: instructor.profileImg,
                child: Container(
                  height: 110.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    image: DecorationImage(
                        image: AssetImage(instructor.profileImg),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 12.0,
              top: 138.0,
              child: Column(
                children: <Widget>[
                  Text(
                    instructor.instructorName,
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 12.0,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.grey.withOpacity(0.5),
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        instructor.rating,
                        style: GoogleFonts.sourceSansPro(fontSize: 11.0),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
