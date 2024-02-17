// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  double ekranGenisligi = 0;
  bool menuAcik = false;
  @override
  Widget build(BuildContext context) {
    ekranGenisligi = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [menuOlustur(context), dashBoardOlustur(context)],
          ),
        ));
  }

  menuOlustur(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                label: const Text(
                  "Cari",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.list,
                    color: Colors.red,
                  ),
                  label: const Text("Sipariş", style: TextStyle(fontSize: 14, color: Colors.black54))),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.list_alt,
                    color: Colors.red,
                  ),
                  label: const Text("Fatura", style: TextStyle(fontSize: 14, color: Colors.black54))),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.payments_outlined,
                    color: Colors.red,
                  ),
                  label: const Text("Ödeme/Tahsilat", style: TextStyle(fontSize: 14, color: Colors.black54))),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.red,
                  ),
                  label: const Text("Ayarlar", style: TextStyle(fontSize: 14, color: Colors.black54))),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),
                  label: const Text("Oturum Kapat", style: TextStyle(fontSize: 14, color: Colors.black54)))
            ]),
      ),
    );
  }

  dashBoardOlustur(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      top: 0,
      bottom: 0,
      left: menuAcik ? ekranGenisligi * 0.5 : 0,
      right: menuAcik ? ekranGenisligi * -0.4 : 0,
      child: Material(
        elevation: 8,
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          menuAcik = !menuAcik;
                        });
                      },
                      child: const Icon(Icons.menu)),
                  const Text("Muhasebe App", style: TextStyle(fontSize: 20)),
                  const Icon(
                    Icons.add_circle_outline,
                    color: Colors.black54,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(color: Colors.red, margin: const EdgeInsets.symmetric(horizontal: 20),
                     child: const Center(child: Text("Slider 1",style: TextStyle(fontSize: 20,color: Colors.white),))),
                    Container(color: Colors.teal, margin: const EdgeInsets.symmetric(horizontal: 20),
                     child: const Center(child: Text("Slider 2",style: TextStyle(fontSize: 20,color: Colors.white),))),
                    Container(color: Colors.brown, margin: const EdgeInsets.symmetric(horizontal: 20),
                     child: const Center(child: Text("Slider 3",style: TextStyle(fontSize: 20,color: Colors.white),))),
                    Container(color: Colors.brown, margin: const EdgeInsets.symmetric(horizontal: 20),
                     child: const Center(child: Text("Slider 4",style: TextStyle(fontSize: 20,color: Colors.white),))),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Data 1",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Data 2",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Data 3",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Data 4",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
