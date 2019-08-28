import 'package:flutter/material.dart';

class Detay extends StatefulWidget {

  var imgPath;

  Detay({this.imgPath});
  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[



          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.imgPath),fit: BoxFit.cover),
              ),
            ),
          ),


          GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Container(padding: EdgeInsets.only(top: 20),height: 100,
              width: 60,
              child: Icon
                (Icons
                  .arrow_back,
                color: Colors.white,),),
          ),

          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 4,
              child: Container(
                height:MediaQuery.of(context).size.height*0.27 ,
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(image: AssetImage
                              ("assets/dress.jpg"),fit: BoxFit.contain),
                          ),),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("LAMINATED",style: TextStyle(fontFamily: 'Mo'
                                'ntserrat',fontSize: 22,fontWeight:
                            FontWeight.bold),),

                            SizedBox(height: 5,),

                            Text("Louis vuitton",style: TextStyle(fontFamily:
                            'Mo'
                                'ntserrat',fontSize: 16,color: Colors.grey,
                            ),),

                            SizedBox(height: 10,),

                            Container(
                              height: 48,
                              width: MediaQuery.of(context).size.width-168,
                              child: Text("One button V-neck sling long-slleved waist "
                                  "female stitching dress",style: TextStyle
                                (fontFamily:
                              'Mo'
                                  'ntserrat',fontSize: 14,color: Colors.grey,
                              ),),
                            ),


                          ],
                        ),
                      ],
                    ),

                    Divider(),

                    Padding(
                      padding: const EdgeInsets.only(left: 16,top: 8,bottom:
                      2,right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("\$6500",style: TextStyle(fontWeight: FontWeight
                                  .bold,fontSize: 22,fontFamily: 'Montserrat'),),

                          FloatingActionButton(
                            onPressed: (){

                            },
                            child: Icon(Icons.arrow_forward_ios),
                            backgroundColor: Colors.brown,
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
                
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text("LAMINATED",style: TextStyle(fontFamily: 'Montserra'
                        't',color: Colors.white,fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,)
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
