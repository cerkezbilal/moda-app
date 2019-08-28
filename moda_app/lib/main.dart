import 'package:flutter/material.dart';
import 'package:moda_app/detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin {

  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController =TabController(length: 4,vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Material(
          color: Colors.white,
          child: TabBar(indicatorColor: Colors.transparent,controller: tabController,
            tabs:[
            Tab(icon: Icon(Icons.more,color: Colors.black,size: 22,),),
            Tab(icon: Icon(Icons.play_arrow,color: Colors.grey,size: 22,),),
            Tab(icon: Icon(Icons.navigation,color: Colors.grey,size: 22,),),
            Tab(icon: Icon(Icons.supervised_user_circle,color: Colors.grey,
              size: 22,),),
          ],),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          Container(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              
              child: Container(
                height: 550,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(

                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/model1.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Daisy",
                                  style: TextStyle(
                                      fontFamily: 'Mont'
                                          'serrat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  "34 mins ago",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 12,
                                  color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.more_vert,color: Colors.grey,),
                      ],
                    ),

                    SizedBox(height: 15,),

                    Text("This official website features,a ribbed knit zipper"
                        "jacket that is moder and stylish. It looks very "
                        "temparament and is recomen to friends",style:
                    TextStyle(fontFamily: 'Montserrat', fontSize: 13,color:
                    Colors.grey),),

                    SizedBox(height: 15,),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context)=>Detay(imgPath : "assets/m"
                                    "odelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(

                              width: (MediaQuery.of(context).size.width-50)/2,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage("assets/modelgrid1.jpeg",),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(

                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context)=>Detay(imgPath : "assets/m"
                                        "odelgrid2.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(

                                  width: (MediaQuery.of(context).size.width-100)/2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage("assets/modelgrid2"
                                            ".jpeg",),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context)=>Detay(imgPath : "assets/m"
                                        "odelgrid3.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(

                                  width: (MediaQuery.of(context).size.width-100)/2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage("assets/modelgrid3"
                                            ".jpeg",),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),

                          child: Center(
                            child: Text("# Louis vuitton",style: TextStyle
                              (fontFamily: "Montserrat",fontSize: 10,color:
                            Colors.brown),),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),

                          child: Center(
                            child: Text("# Chole",style: TextStyle
                              (fontFamily: "Montserrat",fontSize: 10,color:
                            Colors.brown),),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20,),
                    Divider(),
                    
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.reply,color: Colors.brown.withOpacity(0.2)
                            ,size: 30,),
                        SizedBox(width: 10,),
                        Text("1.7k",style: TextStyle(fontFamily: 'Montserrat'
                          ,color: Colors.grey,fontSize: 16),),
                        SizedBox(width: 25,),

                        Icon(Icons.comment,color: Colors.brown.withOpacity(0.2)
                          ,size: 30,),
                        SizedBox(width: 10,),
                        Text("325",style: TextStyle(fontFamily: 'Montserrat'
                            ,color: Colors.grey,fontSize: 16),),

                        Container(
                          width: MediaQuery.of(context).size.width-235,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(Icons.favorite,color: Colors.red
                                ,size: 30,),
                              SizedBox(width: 5,),
                              Text("2.3k",style: TextStyle(fontFamily: 'Montser'
                                  'rat'
                                  ,color: Colors.grey,fontSize: 16),),
                            ],
                          ),
                        ),



                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              "Fllow",
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
