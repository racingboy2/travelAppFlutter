import 'package:flutter/material.dart';
import 'package:travel_app/items/item_ticket1chieu.dart';
import 'package:travel_app/items/item_ticketKhuHoi.dart';
import 'package:travel_app/values/app_assets.dart';
import 'package:travel_app/values/app_colors.dart';
import 'package:travel_app/values/app_images.dart';

class ticketPage extends StatefulWidget {
  const ticketPage({super.key});

  @override
  State<ticketPage> createState() => _ticketPageState();
}

class _ticketPageState extends State<ticketPage> {
  // final List<Widget> _page = [];
  // final List<BottomAppBar>

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.background_ticket),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: Text(
                  'Đặt vé  máy bay',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        // Đây là phần background của TabBar
                        color: AppColors.primaryColor,

                        child: TabBar(
                          tabs: [
                            Tab(
                              child: Text('1 Chiều',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Tab(
                              child: Text('Khứ hồi',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Tab(
                              child: Text('Nhiều chặng',
                                  style: TextStyle(color: Colors.white)),
                            )
                            // Tab(
                            //   child: Text('Nhiều chặng',
                            //       style: TextStyle(color: Colors.white)),
                            // ),
                          ],
                        ),
                      ),
                      Expanded(
                        // Đây là phần nội dung của TabBarView
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TabBarView(
                            children: [
                              itemTicket(),
                              itemTicketKhuHoi(),
                              itemTicketKhuHoi()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.only(bottom: 50),
                  height: 60,
                  width: double.infinity,
                  child: Text(
                    'Mã khuyến mãi(nếu có):',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Container(
                  margin: EdgeInsets.only(bottom: 50),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: AppColors.textColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Text(
                      'Tìm kiếm chuyến bay',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
