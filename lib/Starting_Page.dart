import 'package:flipcart_ui/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Starting_Page extends StatefulWidget {
  const Starting_Page({super.key});

  @override
  State<Starting_Page> createState() => _Starting_PageState();
}

class _Starting_PageState extends State<Starting_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 55,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.shade700,
                    border: Border.all(
                      width: 0.5,
                      color: Colors.grey.shade50,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "Assets/Images/flipcart_logo.png",
                        width: 50,
                        height: 50,
                      ),
                      Text("Flipkart",
                          style: GoogleFonts.prostoOne(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          )),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 55,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700.withOpacity(.2),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.grey.shade50,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "Assets/Images/flipcart_logo.png",
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        "Glocery",
                        style: GoogleFonts.prostoOne(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Column(
                  children: [
                    Text("Bramd Mall"),
                    Icon(CupertinoIcons.switch_camera),
                  ],
                ),
                Spacer(),
                Container(
                  height: 42,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Row(
                    children: [
                      Flexible(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: "Search for priducts...",
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Icon(CupertinoIcons.mic),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(CupertinoIcons.camera),
                      SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: Colours.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 2, crossAxisCount: 1, mainAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 30,
                    ),
                    child: Card(
                      color: Colours[index],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: Colours.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 2, crossAxisCount: 1, mainAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(30),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colours[index],
                      ),

                    ),
                  );
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
