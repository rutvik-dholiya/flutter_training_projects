import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        title: Container(
          child: Text(
            "Opal White",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "WackaWacka",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          margin: EdgeInsets.only(
            top: 4.5,
          ),
        ),

        titleSpacing: 10,
        backgroundColor: Colors.black,
        toolbarHeight: 63,
        leadingWidth: 60,
        foregroundColor: Colors.white,
        actionsIconTheme: IconThemeData(
          color: Colors.brown[100],
          size: 27,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        leading: Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.only(left: 8),
              child: IconButton(
                padding: EdgeInsets.all(6),
                icon: Container(
                  width: 100,
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/leading_icon.png"),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.brown,
                      width: 2,
                    ),
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          },
        ),

        // bottom: PreferredSize(
        //   preferredSize: Size(0, 0),
        //   child: Text(
        //     "Nifty 17500.45      BANKNIFTY 36247.53",
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 15,
        //     ),
        //   ),
        // ),

        actions: [
          Padding(
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            padding: EdgeInsets.only(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
            ),
          ),
          Padding(
            child: IconButton(
              icon: Icon(Icons.apps_outlined),
              onPressed: () {},
            ),
            padding: EdgeInsets.only(right: 10),
          ),
        ],

        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              accountName: Text("Rutvik Dholiya"),
              accountEmail: Text("rutvikdholiyalava@gmail.com"),
              currentAccountPictureSize: Size(70, 70),
              currentAccountPicture: Container(
                padding: EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/leading_icon.png"),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.brown,
                    width: 2,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text("Wallet"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        verticalDirection: VerticalDirection.down,
        children: [
          Container(
            height: 100,
            width: 600,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            //transform: Matrix4.rotationX(1),
            //foregroundDecoration: BoxDecoration(color: Colors.white),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                RotateAnimatedText(
                  "NIFTY 17499.50",
                  textStyle: TextStyle(fontSize: 25),
                  duration: Duration(milliseconds: 1300),
                ),
                RotateAnimatedText(
                  "BANKNIFTY 36300.55",
                  textStyle: TextStyle(fontSize: 25),
                  duration: Duration(milliseconds: 1300),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  spreadRadius: 3.5,
                  blurRadius: 8.0,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 13,
              top: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.greenAccent[50],
            ),
            child: Text(
              " Net Position : +1,85,000.45 ",
              textAlign: TextAlign.center,
              //maxLines: 2,
              //overflow: TextOverflow.ellipsis,
              textDirection: TextDirection.ltr,
              softWrap: true,
              textWidthBasis: TextWidthBasis.parent,
              style: TextStyle(
                color: Colors.black,
                //backgroundColor: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Times New Roman",
                fontStyle: FontStyle.normal,
                //decoration: TextDecoration.overline,
                //decorationColor: Colors.greenAccent,
                //decorationStyle: TextDecorationStyle.double,
                textBaseline: TextBaseline.ideographic,
                decorationThickness: 2,
                //height: 1,
                letterSpacing: 0,
                wordSpacing: 1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 150,
                padding: EdgeInsets.all(3),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/4/44/National_Stock_Exchange_of_India_%28NSE%29_logo.svg/250px-National_Stock_Exchange_of_India_%28NSE%29_logo.svg.png",
                  placeholder: (context, url) => Container(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      color: Colors.green,
                      backgroundColor: Colors.white,
                      strokeWidth: 3,
                    ),
                  ),
                  errorWidget: (context, url, error) =>
                      Image.asset("assets/images/no_image.jpeg"),
                ),
              ),
              Container(
                height: 45,
                width: 105,
                padding: EdgeInsets.all(3),
                alignment: Alignment.center,
                child: CachedNetworkImage(
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Bombay_Stock_Exchange_logo.svg/175px-Bombay_Stock_Exchange_logo.svg.png",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                    value: downloadProgress.progress,
                    color: Colors.green,
                    strokeWidth: 3,
                  ),
                  errorWidget: (context, url, error) =>
                      Image.asset("assets/images/no_image.jpeg"),
                ),
              ),
              Container(
                height: 50,
                width: 125,
                padding: EdgeInsets.all(3),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/f/fc/Multi_Commodity_Exchange%2C_India_logo.svg/220px-Multi_Commodity_Exchange%2C_India_logo.svg.png",
                  placeholder: (context, url) => Container(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      color: Colors.green,
                      backgroundColor: Colors.white,
                      strokeWidth: 3,
                    ),
                  ),
                  errorWidget: (context, url, error) =>
                      Image.asset("assets/images/no_image.jpeg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
