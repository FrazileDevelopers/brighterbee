import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'category.dart';

final List<Category> categories = [
  Category(
    1,
    "Algorithms",
    icon: Image.asset(
      'assets/images/algorithms.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    2,
    "Android",
    icon: Image.asset(
      'assets/images/android.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    3,
    "Angular",
    icon: Image.asset(
      'assets/images/angular.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    4,
    "Angular Js",
    icon: Image.asset(
      'assets/images/angularjs.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    5,
    "Bash",
    icon: Image.asset(
      'assets/images/bash.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    6,
    "C",
    icon: Image.asset(
      'assets/images/c.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    7,
    "C#",
    icon: Image.asset(
      'assets/images/cha.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    8,
    "C++",
    icon: Image.asset(
      'assets/images/cpl.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    9,
    "CSS",
    icon: Image.asset(
      'assets/images/css.jpeg',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    10,
    "Git",
    icon: Image.asset(
      'assets/images/git.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    11,
    "Haskell",
    icon: Image.asset(
      'assets/images/haskell.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    12,
    "Hibernate",
    icon: Image.asset(
      'assets/images/hibernate.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    13,
    "HTML 5",
    icon: Image.asset(
      'assets/images/html5.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    14,
    "iOS",
    icon: Image.asset(
      'assets/images/ios.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    15,
    "Java",
    icon: Image.asset(
      'assets/images/java.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    16,
    "Java Script",
    icon: Image.asset(
      'assets/images/javascript.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    17,
    "Jquery",
    icon: Image.asset(
      'assets/images/jquery.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    18,
    "Kotlin",
    icon: Image.asset(
      'assets/images/kotlin.jpeg',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    19,
    "Linux",
    icon: Image.asset(
      'assets/images/linux.jpeg',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    20,
    "Matlab",
    icon: Image.asset(
      'assets/images/matlab.jpeg',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    21,
    "MongoDB",
    icon: Image.asset(
      'assets/images/mongodb.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    22,
    "MySQL",
    icon: Image.asset(
      'assets/images/mysql.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    23,
    "Nodejs",
    icon: Image.asset(
      'assets/images/nodejs.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    24,
    "Perl",
    icon: Image.asset(
      'assets/images/perl.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    25,
    "PHP",
    icon: Image.asset(
      'assets/images/php.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  ),
  Category(
    26,
    "Postgre SQL",
    icon: Image.asset(
      'assets/images/postgresql.png',
      fit: BoxFit.scaleDown,
      width: 60.0,
    ),
  )
];

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      drawer: (){},
      appBar: AppBar(
        title: Text("Brighterbee"),
      ),
      body: Gridoptions(),
    );
  }
}

class Gridoptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            decoration: BoxDecoration(color: Colors.deepOrange),
            height: 250,
          ),
        ),
        CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "Select a category to start the quiz",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  delegate: SliverChildBuilderDelegate(
                    _buildCategoryItem,
                    childCount: categories.length,
                  )),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCategoryItem(BuildContext context, int index) {
    Category category = categories[index];
    return MaterialButton(
      elevation: 1.0,
      highlightElevation: 1.0,
      onPressed: () => _categoryPressed(context, category),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.red,
      textColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (category.icon != null) category.icon,
          if (category.icon != null) SizedBox(height: 5.0),
          Text(
            category.name,
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  _categoryPressed(BuildContext context, Category category) {
    //TODO: add on pressed function here
    print(category);
  }
}
