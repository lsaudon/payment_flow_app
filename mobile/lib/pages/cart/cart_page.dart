import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 21),
              const CartHeader(),
              const SizedBox(height: 32),
              CartList(),
              const SizedBox(height: 22),
              CartTotalAmount(),
              const SizedBox(height: 50),
              CartProcessedForPayment(),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}

class CartHeader extends StatelessWidget {
  const CartHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 51, right: 12),
      child: Row(
        children: <Widget>[
          Text(
            'Cart',
            style: GoogleFonts.roboto(
              fontStyle: FontStyle.normal,
              fontSize: 20,
              color: const Color(0xff252c3b),
            ),
          ),
          Expanded(child: Container()),
          Container(
            height: 28,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color(0xff818a99),
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Text(
              '3 Item added',
              style: GoogleFonts.robotoCondensed(
                fontStyle: FontStyle.normal,
                fontSize: 15,
                color: const Color(0xff252b35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final europeanCountries = [1];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: europeanCountries.length,
      padding: const EdgeInsets.only(left: 12, right: 7),
      itemBuilder: (context, index) {
        return const CartItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 2);
      },
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: 8,
              right: 14,
              top: 7,
              bottom: 7,
            ),
            margin: const EdgeInsets.only(
              right: 5,
              top: 6,
            ),
            decoration: BoxDecoration(
              color: const Color(0xfff6f6f8),
              borderRadius: BorderRadius.circular(11),
            ),
            height: 71,
            child: Row(
              children: <Widget>[
                const Image(
                  image: AssetImage('assets/images/image.jpg'),
                  fit: BoxFit.scaleDown,
                ),
                const SizedBox(width: 14),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Golden fruit jam',
                      style: GoogleFonts.robotoCondensed(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: const Color(0xff252c3b),
                      ),
                    ),
                    Text(
                      'Quantity 01 Bottle',
                      style: GoogleFonts.roboto(
                        fontStyle: FontStyle.normal,
                        fontSize: 11,
                        color: const Color(0xff596273),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  height: 30,
                  width: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xff818a99),
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    '01',
                    style: GoogleFonts.robotoCondensed(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: const Color(0xff252b35),
                    ),
                  ),
                ),
                const SizedBox(width: 9),
                Container(
                  height: 30,
                  width: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xff818a99),
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    r'$10.99',
                    style: GoogleFonts.robotoCondensed(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: const Color(0xff252b35),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 17,
              width: 17,
              decoration: const ShapeDecoration(
                color: Color(0xff67d4c7),
                shape: CircleBorder(),
              ),
              child: Icon(
                Icons.clear,
                color: const Color(0xffffffff),
                size: 8,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CartTotalAmount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: Border.all(
          width: 1,
          color: const Color(0xffbbc4ce),
        ),
      ),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Total Amount',
                style: GoogleFonts.roboto(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: const Color(0xff000000),
                ),
              ),
              Text(
                'inclusive af all taxes',
                style: GoogleFonts.roboto(
                  fontStyle: FontStyle.italic,
                  fontSize: 11,
                  color: const Color(0xff596273),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            r'$30.49',
            style: GoogleFonts.roboto(
              fontStyle: FontStyle.normal,
              fontSize: 20,
              color: const Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }
}

class CartProcessedForPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 37),
        color: const Color(0xff475062),
        child: Text(
          'Processed for Payment',
          style: GoogleFonts.roboto(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xffffffff),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
