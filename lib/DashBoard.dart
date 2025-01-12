import 'package:flutter/material.dart';
import 'package:meditasyon_ana/detaylar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: ListView(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "İyi Günler",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Sadece Rahatla",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.blueAccent, width: 4),
                      ),
                      width: 60,
                      height: 60,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/meditasyon5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Tavsiye",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 7,
                ),
                Stack(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.blueAccent[700],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Günlük 10 dakika meditasyon",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "10 Bölüm",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                FloatingActionButton.extended(
                                  onPressed: () {},
                                  backgroundColor: Colors.white,
                                  label: Text(
                                    "Oynat",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  icon: Icon(Icons.play_arrow),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Image.asset("assets/meditasyon1.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Devam Et",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[700],
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      width: 70,
                      height: 70,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/meditasyon3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Streslerinden Kurtul",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("10 Dakika"),
                      ],
                    ),
                    Spacer(),
                    FloatingActionButton.small(
                      onPressed: () {},
                      backgroundColor: Colors.lightBlue[700],
                      child: Icon(Icons.play_arrow),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Aktiviteler",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 165,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detaylar()));
                        },
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "İyileş",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                Expanded(
                                  child: Image.asset("assets/meditasyon1.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                "Rahatlama",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              Expanded(
                                child: Image.asset("assets/meditasyon3.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                "Meditasyon",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              Expanded(
                                child: Image.asset("assets/meditasyon4.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            selectedItemColor: Colors.black87,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black87,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cloud, color: Colors.black87),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.nights_stay_rounded, color: Colors.black87),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.black87),
                  label: "Home"),
            ],
          ),
        ),
      ),
    );
  }
}
