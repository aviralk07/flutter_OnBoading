import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    int currentPosition = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text("OnBoading Screen"),
      ),
      body: Column(

        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                // setState(() {
                //   currentPosition = index;
                // });
              },
              children: [
                SingleChildScrollView(
                  child: Container(

                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Image.asset('assets/images/Goclip.png'),
                        ),
                        Center(
                          child: Text(
                            'Search',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'GoClip lets users create or upload short video resumes to get hired. As an employer it lets you search for the candidates and shows their short video resumes on your feed. Employers can connect with the potential employees over chat or video call. The app also lets you share documents, or schedule interviews for an overall hiring experience',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Center(
                            child: Container(
                                width: 100,
                                height: 100,
                                child:
                                Image.asset('assets/images/camera.webp')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Container(
                              width: 200,
                              height: 200,
                              child: Image.asset('assets/images/hiring.jpeg')),
                        ),
                        Center(
                          child: Text(
                            'Share',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Have a opening at your workplace or need a job quick? Worry not, GoClip allows you to create and upload your requirements in an engaging short video format.',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Center(
                            child: Container(
                                width: 100,
                                height: 100,
                                child:
                                Image.asset('assets/images/download.webp')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Image.asset('assets/images/vi.webp'),
                        ),
                        Center(
                          child: Text(
                            'Explore',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.purpleAccent),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'We understand the power of engagement in todays fast pacing world. GoClip is built from ground up to provide more engagement whether you are looking for a job, hiring for your company or trying to raise fund for your startup. GoClips built in AI technology, finds out potential employees, right company or a perfect financial parter to give wings to your startup.',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Center(
                            child: Container(
                                width: 100,
                                height: 100,
                                child: Image.asset('assets/images/bulb.webp')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      pageController.previousPage(
                          duration: Duration(microseconds: 500),
                          curve: Curves.linear);
                    },
                    child:  Text('Back')),
                TextButton(
                    onPressed: () {
                      pageController.nextPage(
                          duration: Duration(microseconds: 500),
                          curve: Curves.bounceIn);
                    },
                    child:  Text('Next'))
              ],
            ),
          )
        ],
      ),
    );
  }




}