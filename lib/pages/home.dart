import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mpesa_ui/data/home_data.dart';
import 'package:mpesa_ui/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _show = false;
  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 192),
        child: Stack(
          children: [
            Container(
              // Background
              color: AppColors.primaryColor,
              height: height + 215,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Habari RAYMOND",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const Text(
                    "Mara ya mwisho kuingia: 01 Des 12:13",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: height + 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 2, color: Colors.white)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SwitchListTile(
                            title: const Text(
                              'Akaunti ya M-Pesa',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            ),
                            value: _show,
                            onChanged: (bool value) {
                              setState(() {
                                _show = !_show;
                              });
                            },
                            activeColor: Colors.white,
                          ),
                          _show
                              ? const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Text(
                                    '500 TZS',
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              : const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Text(
                                    '*********',
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                        ]),
                  ),
                ],
              ),
            ),

            Container(),
            // Required some widget in between to float AppBar

            const Positioned(
                // To take AppBar Size only
                top: 238,
                left: 20.0,
                right: 20.0,
                child: Material(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.receipt),
                    title: Text("Taarifa za Mpesa"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ))
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(AppBar().preferredSize.height),
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(height: 3),
          SizedBox(
            height: 118,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: homedata1.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Card(
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(homedata1[index]['icon']),
                            Text(homedata1[index]['name'])
                          ],
                        ),
                      ),
                    ),
                  );
                })),
          )
        ],
      )),
    );
  }
}
