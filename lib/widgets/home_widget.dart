import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Padding(
            padding: EdgeInsets.only(top: 43, left: 20),
            child: Head_greetings(),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserData(),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Assets',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      fontSize: 20,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                            Text(
                              'viev all',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                      fontSize: 13, color: Color(0xffA7A7A7)),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          AssetList1(),
                          AssetList1(),
                          AssetList1(),
                          AssetList1(),
                        ]),
                      )
                      // ListView(
                      //   shrinkWrap: true,
                      //   children: [
                      //     AssetList1(),
                      //     AssetList1(),
                      //     AssetList1(),
                      //   ],
                      // )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trends',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 20,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      Text(
                        'viev all',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontSize: 13, color: Color(0xffA7A7A7)),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // bottomTrendList(),
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset('assets/images/navBar/navShape.png'),
                    Center(
                      // heightFactor: ,
                      child: Container(
                        width: 63,
                        height: 63,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff704EF4),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/navBar/plus.png'),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/navBar/blur.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class bottomTrendList extends StatelessWidget {
  const bottomTrendList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 66,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff211E41),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset("assets/images/bottomCryptoList/Group 30.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Litecoin',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                Text(
                  'LTE',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(fontSize: 12, color: Color(0xffA7A7A7)),
                ),
              ],
            ),
            Image.asset('assets/images/bottomCryptoList/Group 34.png'),
            Text(
              '3457.00',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontSize: 12, color: Color.fromRGBO(167, 167, 167, 1)),
            ),
          ]),
        ),
      ),
    );
  }
}

class AssetList1 extends StatelessWidget {
  const AssetList1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 11),
      child: Container(
        width: 129,
        height: 136,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff211E41),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 15),
          child: Column(children: [
            Image.asset('assets/images/midCryptoListRow/btc.png'),
            Text(
              'Bitcoin',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 11, color: Color(0xffA7A7A7)),
            ),
            Text(
              's6012.00',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontSize: 11, color: Color(0xffFFFFFF)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.6),
              child: Container(
                width: 49,
                height: 19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xff1D1B32),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/midCryptoListRow/arrow.png'),
                  Text(
                    ' +2.17',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontSize: 11, color: Color(0xffA7A7A7)),
                  ),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class UserData extends StatelessWidget {
  const UserData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              height: 115,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                color: Color.fromRGBO(55, 53, 66, 1),
              ),
            ),
            Container(
              height: 71,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                color: Color.fromRGBO(33, 30, 65, 1),
              ),
            )
          ],
        ),
        Positioned(
          top: -50,
          right: -70,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              'assets/images/Ellipse 72.png',
              color: Colors.white.withOpacity(0.8),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ),
        Positioned(
          top: -50,
          left: -70,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              'assets/images/Ellipse 71.png',
              color: Colors.white.withOpacity(0.8),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ),
        Positioned(
          top: -70,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              'assets/images/Ellipse 70.png',
              color: Colors.white.withOpacity(0.8),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ),
        Positioned(
          top: 128,
          left: 22,
          right: 22,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profit',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 15, color: Color.fromRGBO(167, 167, 167, 1)),
                  ),
                  Text(
                    's13250.00',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 16,
                        ),
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -10,
                        right: -20,
                        child:
                            Image.asset('assets/images/midim/Ellipse 73.png'),
                      ),
                      Positioned(
                        // left: -5,
                        // top: 1,
                        child: Image.asset('assets/images/midim/Vector 15.png'),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 39, top: 13),
                    child: Text(
                      '5.7%',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 22,
          left: 22,
          right: 22,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total balance',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 15, color: Color.fromRGBO(167, 167, 167, 1)),
                  ),
                  Text(
                    's13450.00',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 64,
                  height: 31,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(36, 255, 255, 255),
                      borderRadius: BorderRadius.circular(23)),
                  child: Center(
                    child: Text(
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              fontSize: 12,
                            ),
                        '+15%'),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Head_greetings extends StatelessWidget {
  const Head_greetings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text.rich(
        TextSpan(
          text: 'Hello Nikolya, ',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontSize: 15,
              ),
          children: <TextSpan>[
            TextSpan(
              text: '\nWelcome!!',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 22,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
