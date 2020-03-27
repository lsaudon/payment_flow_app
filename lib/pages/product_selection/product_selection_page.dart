import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSelectionPage extends StatefulWidget {
  @override
  _ProductSelectionPageState createState() => _ProductSelectionPageState();
}

class _ProductSelectionPageState extends State<ProductSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 29, left: 63),
              child: ProductSummaryInformation(),
            ),
            const SizedBox(height: 36),
            ProductCarousel(),
            const SizedBox(height: 24),
            ProductQuantity(),
            Padding(
              padding: const EdgeInsets.only(top: 36, bottom: 32),
              child: ProductPrice(),
            ),
            ProductPurchaseNow(),
            const SizedBox(height: 21),
          ],
        ),
      ),
    );
  }
}

class ProductSummaryInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Golden fruit jam',
                style: GoogleFonts.robotoCondensed(
                  fontStyle: FontStyle.normal,
                  fontSize: 35,
                  color: const Color(0xff252c3b),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                '100% Fruit extract jam with add sugar',
                style: GoogleFonts.roboto(
                  fontStyle: FontStyle.normal,
                  fontSize: 11,
                  color: const Color(0xff596273),
                ),
              ),
            ],
          ),
          const SizedBox(width: 18),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Ink(
              height: 22,
              width: 22,
              decoration: const ShapeDecoration(
                color: Color(0xff596273),
                shape: CircleBorder(),
              ),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                iconSize: 11,
                color: const Color(0xffffffff),
                tooltip: 'Like Product',
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        height: 238,
        viewportFraction: 0.60,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        items: [1, 2, 3].map(
          (i) {
            return Builder(
              builder: (BuildContext context) {
                return const CarouselItem();
              },
            );
          },
        ).toList(),
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            color: const Color(0xfff6f6f8),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Image(
            image: AssetImage('assets/images/image.jpg'),
            fit: BoxFit.contain,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 32,
            width: 32,
            margin: const EdgeInsets.only(top: 18),
            decoration: const ShapeDecoration(
              color: Color(0xff00eab2),
              shape: CircleBorder(),
            ),
            child: Icon(
              Icons.check,
              color: const Color(0xffffffff),
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}

class ProductQuantity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 79),
        child: RaisedButton(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(33),
          ),
          padding: const EdgeInsets.all(16),
          color: const Color(0xfff6f6f8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Quantity',
                style: GoogleFonts.roboto(
                  fontStyle: FontStyle.normal,
                  fontSize: 13,
                  color: const Color(0xff979aa1),
                ),
              ),
              const SizedBox(width: 49),
              SvgPicture.asset(
                'assets/svgs/bottle.svg',
                fit: BoxFit.fitHeight,
                height: 21,
              ),
              const SizedBox(width: 9),
              Text(
                '1 Bottle',
                style: GoogleFonts.roboto(
                  fontStyle: FontStyle.normal,
                  fontSize: 13,
                  color: const Color(0xff596273),
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class ProductPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        r'$10.99',
        style: GoogleFonts.roboto(
          fontStyle: FontStyle.normal,
          fontSize: 35,
          color: const Color(0xff252c3b),
        ),
      ),
    );
  }
}

class ProductPurchaseNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 64),
            color: const Color(0xffff416e),
            child: Text(
              'Purchase Now',
              style: GoogleFonts.roboto(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xffffffff),
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Taxes and delivery charges applicable',
                style: GoogleFonts.roboto(
                  fontStyle: FontStyle.normal,
                  fontSize: 10,
                  color: const Color(0xff8f98a8),
                ),
              ),
              const SizedBox(width: 6),
              Icon(
                Icons.error_outline,
                color: const Color(0xffbcc5d8),
                size: 15,
              )
            ],
          )
        ],
      ),
    );
  }
}
