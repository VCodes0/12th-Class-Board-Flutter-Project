import 'package:flutter/material.dart';

class Mhcet extends StatelessWidget {
  const Mhcet({super.key});

final bodyColor = const LinearGradient(
  colors: [
    Color(0x338EDFF7),
    Color(0xFF55BBEB),
  ],
  begin: Alignment.topCenter, // Or topLeft/topRight depending on exact angle
  end: Alignment.bottomCenter, // Or bottomRight/bottomLeft
);

  final List<String> userList = const [
    "2018 Question paper",
    "2017 Question paper",
    "2016 Question paper",
    "2015 Question paper",
    "2014 Question paper",
    "2013 Question paper",
    "2012 Question paper",
    "2011 Question paper",
    "2010 Question paper",
  ];

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: bodyColor),
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                "assets/mhcet.png",
                fit: BoxFit.fill,
                width: mq.width,
              ),
            ),
            Positioned(
              top: mq.height * 0.22,
              left: mq.width * 0.2,
              child: Image.asset(
                "assets/mhcettitle.png",
                height: 35,
                width: mq.width,
              ),
            ),
            Positioned(
              top: mq.height * 0.27,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: mq.width * 0.05,
                  vertical: mq.height * 0.02,
                ),
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: mq.height * 0.01),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: mq.width * 0.05,
                          vertical: mq.height * 0.01,
                        ),
                        title: Text(
                          userList[index],
                          style: TextStyle(
                            fontSize: mq.width * 0.05,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        trailing: SizedBox(
                          height: mq.height * 0.08,
                          width: mq.width * 0.15,
                          child: Image.asset(
                            "assets/download.png",
                            color: Color(0xFF55BBEB),
                            fit: BoxFit.contain,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
