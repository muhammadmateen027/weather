import 'package:flutter/material.dart';
import 'package:weather/app/app.dart';
import 'package:weather/weather/pages/pages.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.country,
    required this.city,
    required this.currentTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherState,
    required this.imageAsset,
    required this.week,
    required this.onClear,
  }) : super(key: key);

  final String country;
  final String city;
  final String currentTemp;
  final String maxTemp;
  final String minTemp;
  final String weatherState;
  final Widget imageAsset;

  final List<int> week;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Locality(),
            const SizedBox(height: 15),
            SizedBox(
              width: 180,
              height: 180,
              child: imageAsset,
            ),
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text('Today'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_upward,
                                color: AppColors.lightRed,
                              ),
                              SizedBox(width: 5),
                              Text('$maxTempº', style: TextStyle(fontSize: 24))
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_downward,
                                color: AppColors.lightPurple,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '$minTempº',
                                style: TextStyle(fontSize: 24),
                              )
                            ],
                          ),
                        ],
                      ),
                      Text(
                        '$currentTempº',
                        style: TextStyle(fontSize: 96),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.white.withOpacity(0.3),
                    ),
                  ),
                  Text(weatherState)
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Next days'),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 150,
              child: ListView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: [
                  ...week.skip(1).map(
                        (e) => Container(
                          child: Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.arrow_upward,
                                              color: AppColors.lightRed,
                                              size: 13,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '10º',
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.arrow_downward,
                                              color: AppColors.lightPurple,
                                              size: 13,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('0º'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          '12-1-2020',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: -20,
                                    left: 15,
                                    child: Container(
                                      width: 90,
                                      height: 70,
                                      color: Colors.red,
                                      // child: Image(
                                      //     image: AssetImage(
                                      //         'assets/${e.weatherState.toLowerCase().replaceAll(' ', '_')}.png',
                                      //     ),
                                      // ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
              child: ElevatedButton(
                onPressed: onClear,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text('Clear'),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.secondary),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
