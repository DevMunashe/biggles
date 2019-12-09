import 'package:flutter/material.dart';
import './book_data.dart';

class TabOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    createFreeBooks(Book book) => FeaturedFreeBooks(
          bookName: book.name,
          bookAuthor: book.author,
          bookImg: book.image,
          revCount: book.reviewers,
          bookPrice: book.price,
      
        );

    final scroll = Container(
      padding: const EdgeInsets.only(left: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: books.map((book) => createFreeBooks(book)).toList(),
        ),
      ),
    );

createPopularBooks(Book book) => PopularBooks(
          bookName: book.name,
          bookAuthor: book.author,
          bookImg: book.image,
          revCount: book.reviewers,
          bookPrice: book.price,
          bookDesc: book.desc
        );

    final scrollPopular = Container(
      padding: const EdgeInsets.only(left: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: books.map((book) => createPopularBooks(book)).toList(),
        ),
      ),
    );

    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 18.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Discover Books',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Browse',
                            style: TextStyle(
                              color: Color(0xFFBBCCCC),
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: <Widget>[
                      Container(
                        width: 280.0,
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFBBCCCC),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 3.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEBA06),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0.0, left: 20, top: 10),
                    child: Text(
                      'Popular Books',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  // Text(
                  //   'Find more books in your library',
                  //   style: TextStyle(
                  //     color: Color(0xFFBBCCCC),
                  //     fontSize: 12.0,
                  //   ),
                  // ),
              

                  /* Start of the popular book section where
                     Users can swipe through select popular
                     books */
                      scrollPopular,
                /* End of the popular book section where
                     Users can swipe through select popular
                     books */




                  // Padding(
                  //   padding: const EdgeInsets.only(left: 8.0),
                  //   child: Row(
                  //     children: <Widget>[
                  //       Stack(
                  //         alignment: Alignment.centerLeft,
                  //         children: <Widget>[
                  //           Container(
                  //             width: 100,
                  //             height: 2.0,
                  //             decoration: BoxDecoration(
                  //               color: Color(0xFFBBCCCC),
                  //               borderRadius: BorderRadius.circular(2.0),
                  //             ),
                  //           ),
                  //           Container(
                  //             width: 27.0,
                  //             height: 3.0,
                  //             decoration: BoxDecoration(
                  //               color: Color(0xFFEEBA06),
                  //               borderRadius: BorderRadius.circular(2.0),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         width: 5.0,
                  //       ),
                  //       Text('27%',
                  //           style: TextStyle(
                  //             color: Colors.black54,
                  //             fontSize: 12.0,
                  //           )),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),


            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Featured Free Books',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            'View All',
                            style: TextStyle(
                              color: Color(0xFFEEBA06),
                              fontSize: 14.0,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  scroll,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturedFreeBooks extends StatelessWidget {
  final String bookImg;
  final String bookName;
  final String bookAuthor;
  final double bookPrice;
  final num revCount;

  FeaturedFreeBooks(
      {Key key, this.bookImg, this.bookName, this.bookAuthor, this.bookPrice, this.revCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        child: Column(
          children: <Widget>[
            Container(
              width: 120.0,
              height: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: AssetImage(
                    bookImg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              bookName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              bookAuthor,
              style: TextStyle(fontSize: 14.0, color: Color(0xFFE55B4E)),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Color(0xFFEEBA06),
                  size: 16.0,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFFEEBA06),
                  size: 16.0,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFFEEBA06),
                  size: 16.0,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFFEEBA06),
                  size: 16.0,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFFBBCCCC),
                  size: 16.0,
                ),
              ],
            ),
            Text(
              revCount.toString() + ' reviews',
              style: TextStyle(color: Colors.black54, fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}

class PopularBooks extends StatelessWidget {
  final String bookImg;
  final String bookName;
  final String bookAuthor;
  final double bookPrice;
  final num revCount;
  final String bookDesc;

  PopularBooks(
      {Key key, this.bookImg, this.bookName, this.bookAuthor, this.bookPrice, this.revCount, this.bookDesc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        child: Column(
          children: <Widget>[
            Row(  
                  children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            width: 120.0,
                            height: 190.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  bookImg,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  bookName,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                                ),

                                SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFEEBA06),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFEEBA06),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFEEBA06),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFEEBA06),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFEEBA06),
                                      ),
                                    ],
                                  ),
                                ),
                                ),


                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      InkWell(
                                        child: Row(
                                          children: <Widget>[
                                            // Icon(
                                            //   Icons.visibility,
                                            //   color: Color(0xFF000000),
                                            //   size: 20.0,
                                            // ),
                                            SizedBox(width: 4.0),
                                            Text(
                                              "P" + bookPrice.toString(),
                                              style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontFamily: 'UbuntuBold'
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                            
                                    ],
                                  ),
                                ),
                                 ),

                            
                               Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Text(
                                    bookDesc,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                         

                             SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: InkWell(
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 6.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xFF000000),
                                                width: 2.0,
                                                
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            child: Text(
                                              'Buy',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 10.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: InkWell(
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 6.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xFF000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            child: Text(
                                              'Review',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 10.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: InkWell(
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 6.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xFF000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            child: Text(
                                              'Share',
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 10.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                             ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),


                  ],
                   ),

          ],
        ),
      ),
    );
  }
}

