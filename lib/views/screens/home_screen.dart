import 'package:flutter/material.dart';
import 'package:zzoop/views/custom_widgets/custom_appbar.dart';
import 'package:zzoop/views/custom_widgets/custom_cateogry_container.dart';
import 'package:zzoop/views/custom_widgets/custom_navigationbar_widget.dart';
import 'package:zzoop/views/custom_widgets/custom_text.dart';
import 'package:zzoop/views/screens/profile_screen.dart';
import 'package:zzoop/views/screens/send_enquiry_screen.dart';
import 'package:zzoop/views/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isContainerVisible = false;
  bool isExpanded = false;

  void toggleContainerVisibility() {
    setState(() {
      isContainerVisible = !isContainerVisible;
      if (isContainerVisible) {
        isExpanded = false;
      }
    });
  }

  void toggleContainerExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.my_location_sharp,
                      color: Color(0xFF1B4F7F),
                      size: 13.33,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                        text: 'Location',
                        textColor: Color(0xFF161D24),
                        textSize: 12,
                        fontWeight: FontWeight.w400)
                  ],
                ),
              ),
              // SearchBar(
              //   leading: Icon(
              //     Icons.search,
              //     color: Color(0xFF161D24),
              //     size: 16,
              //   ),
              //   hintText: 'Grocery Shop near me',
              //   hintStyle: MaterialStatePropertyAll(TextStyle(
              //       color: Color(0xFF161D24),
              //       fontSize: 14,
              //       fontWeight: FontWeight.w400)),
              //   elevation: MaterialStatePropertyAll(0),

              // ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 40,
                      // width: 358,
                      width: MediaQuery.sizeOf(context).width,
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0xFF161D24),
                            size: 16,
                          ),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Grocery shop near me',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF161D24)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Image.asset(
                            'images/scan.png',
                            height: 16,
                            width: 16,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'images/mike.png',
                            height: 16,
                            width: 16,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CustomText(
                        text: 'Essential Category',
                        textColor: Color(0xFF161D24),
                        textSize: 14,
                        fontWeight: FontWeight.w400)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SendEnquiryScreen(),
                          ));
                    },
                    child: CustomCateogryContainer(
                        imageAsset: 'images/acc.png',
                        labelText: 'Accomendation',
                        containerHeight: 58,
                        containerWidth: 87,
                        imageHeight: 32,
                        imageWidth: 32),
                  ),
                  CustomCateogryContainer(
                      imageAsset: 'images/fitness.png',
                      labelText: 'Fitness',
                      containerHeight: 58,
                      containerWidth: 52,
                      imageHeight: 32,
                      imageWidth: 32),
                  CustomCateogryContainer(
                      imageAsset: 'images/food.png',
                      labelText: 'Foods & Drinks',
                      containerHeight: 58,
                      containerWidth: 85,
                      imageHeight: 32,
                      imageWidth: 32),
                  CustomCateogryContainer(
                      imageAsset: 'images/homes.png',
                      labelText: 'Home & Services',
                      containerHeight: 58,
                      containerWidth: 82,
                      imageHeight: 32,
                      imageWidth: 32),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomCateogryContainer(
                      imageAsset: 'images/health.png',
                      labelText: 'Healthcare',
                      containerHeight: 58,
                      containerWidth: 65,
                      imageHeight: 32,
                      imageWidth: 32),
                  CustomCateogryContainer(
                      imageAsset: 'images/education.png',
                      labelText: 'Education',
                      containerHeight: 58,
                      containerWidth: 62,
                      imageHeight: 32,
                      imageWidth: 32),
                  CustomCateogryContainer(
                      imageAsset: 'images/travel.png',
                      labelText: 'Travel & Tourism',
                      containerHeight: 58,
                      containerWidth: 88,
                      imageHeight: 32,
                      imageWidth: 32),
                  CustomCateogryContainer(
                      imageAsset: 'images/gov.png',
                      labelText: 'Local Govt Offices',
                      containerHeight: 58,
                      containerWidth: 94,
                      imageHeight: 32,
                      imageWidth: 32),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 128,
                width: MediaQuery.sizeOf(context).width,
                color: Color(0xFF141D3F),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'List your Business Now',
                              textColor: Colors.white,
                              textSize: 19.85,
                              fontWeight: FontWeight.w400),
                          CustomText(
                              text: 'FREE for 6 Months',
                              textColor: Colors.white,
                              textSize: 15.27,
                              fontWeight: FontWeight.w700),
                          // Container(
                          //   width: 120,
                          //   height: 30,
                          //   decoration: BoxDecoration(
                          //       color: Color(0xFF07D58C),
                          //       borderRadius: BorderRadius.circular(4.74)),
                          //       child: Row(),
                          // )
                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.74))),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xFF07D58C)),
                                  minimumSize:
                                      MaterialStateProperty.all(Size(120, 30))),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  CustomText(
                                      text: 'JOIN NOW',
                                      textColor: Colors.white,
                                      textSize: 8.54,
                                      fontWeight: FontWeight.w600),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 7,
                                      color: Color(0xFF07D58C),
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    Image.asset(
                      'images/personn.png',
                      height: 128,
                      width: MediaQuery.sizeOf(context).width - 234,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: 'Mostly Searched Businesses',
                        textColor: Color(0xFF161D24),
                        textSize: 14,
                        fontWeight: FontWeight.w400),
                  ],
                ),
              ),
              // Container(
              //   height: 105,
              //   width: 156,
              //   child: PageView.builder(
              //     itemCount: 2,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         height: 50,
              //         width: 156,
              //         // decoration:
              //         // BoxDecoration(borderRadius: BorderRadius.circular(30)),
              //         child: Image.asset('images/pest.png'),
              //       );
              //     },
              //   ),
              // )
              Container(
                height: 105.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SendEnquiryScreen(),
                            ));
                      },
                      child: Container(
                        width: 156.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          shape: BoxShape.rectangle,
                        ),

                        margin: EdgeInsets.all(
                            3.0), // Add margin between containers
                        // You can set your desired color here
                        child: Stack(
                          children: [
                            Image.asset(
                              'images/pack.png',
                              fit: BoxFit.contain,
                            ),
                            const Center(
                              child: CustomText(
                                  text: 'Pest Control services',
                                  fontWeight: FontWeight.w700,
                                  textColor: Colors.white,
                                  textSize: 12),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Positioned(
              //   bottom: isContainerVisible ? 0 : -10,
              //   left: 0,
              //   right: 0,
              //   child: GestureDetector(
              //     onTap: () {
              //       if (!isExpanded) {
              //         toggleContainerVisibility();
              //       } else {
              //         toggleContainerExpansion();
              //       }
              //     },
              //     child: AnimatedContainer(
              //       duration: Duration(milliseconds: 300),
              //       height: isExpanded ? 70 : 50,
              //       width: isExpanded
              //           ? MediaQuery.sizeOf(context).width
              //           : MediaQuery.sizeOf(context).width,
              //       decoration: BoxDecoration(
              //         color: Color(0xFF1B4F7F),
              //         borderRadius: BorderRadius.circular(isExpanded ? 10 : 0),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'This is made with Flutter',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 16,
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //           Positioned(
              //             top: 5,
              //             right: 5,
              //             child: IconButton(
              //               icon: Icon(
              //                 isContainerVisible
              //                     ? Icons.keyboard_arrow_down
              //                     : Icons.keyboard_arrow_up,
              //                 color: Colors.white,
              //               ),
              //               onPressed: () {
              //                 toggleContainerVisibility();
              //                 toggleContainerExpansion();
              //               },
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
