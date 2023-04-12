import 'package:flutter/material.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Request(),
    );
  }
}

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  late TextEditingController namaController;
  String bahan = "none";
  String porsi = "none";
  bool hasilRequest = false;

  @override
  Widget build(BuildContext context) {
    return hasilRequest
        ? buildHasilRequest(context)
        : Scaffold(
            backgroundColor: Colors.blueGrey,
            body: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                buildHeader(context),
                const SizedBox(height: 14),
                const Text(
                  "Nama Resep",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: namaController,
                  decoration: InputDecoration(
                    hintText: "Masukan Nama Resep",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  "Pilih Bahan",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        value: "Ayam",
                        groupValue: bahan,
                        onChanged: (value) {
                          setState(() {
                            bahan = value ?? "none";
                          });
                        },
                      ),
                      title: const Text("Ayam"),
                    ),
                    ListTile(
                      leading: Radio(
                        value: "Daging",
                        groupValue: bahan,
                        onChanged: (value) {
                          setState(() {
                            bahan = value ?? "none";
                          });
                        },
                      ),
                      title: const Text("Daging"),
                    ),
                    ListTile(
                      leading: Radio(
                        value: "Sayur",
                        groupValue: bahan,
                        onChanged: (value) {
                          setState(() {
                            bahan = value ?? "none";
                          });
                        },
                      ),
                      title: const Text("Sayur"),
                    ),
                    ListTile(
                      leading: Radio(
                        value: "Seafood",
                        groupValue: bahan,
                        onChanged: (value) {
                          setState(() {
                            bahan = value ?? "none";
                          });
                        },
                      ),
                      title: const Text("Seafood"),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                const Text(
                  "Porsi Masakan",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        value: "Porsi Kecil",
                        groupValue: porsi,
                        onChanged: (value) {
                          setState(() {
                            porsi = value ?? "none";
                          });
                        },
                      ),
                      title: const Text("Porsi Kecil"),
                    ),
                    ListTile(
                      leading: Radio(
                        value: "Porsi Sedang",
                        groupValue: porsi,
                        onChanged: (value) {
                          setState(() {
                            porsi = value ?? "none";
                          });
                        },
                      ),
                      title: const Text("Porsi Sedang"),
                    ),
                    ListTile(
                      leading: Radio(
                        value: "Porsi Besar",
                        groupValue: porsi,
                        onChanged: (value) {
                          setState(() {
                            porsi = value ?? "none";
                          });
                        },
                      ),
                      title: const Text("Porsi Besar"),
                    ),
                  ],
                ),
              ],
            ),
          );
  }

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    namaController.dispose();
  }

  Widget buildHeader(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 115,
          height: 30,
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            "Request Resep",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.green,
          ),
        ),
        const Expanded(child: SizedBox()),
        TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
          ),
          onPressed: () {
            setState(() {
              namaController.clear();
              bahan = "none";
              porsi = "none";
            });
          },
          icon: const Icon(Icons.cancel_outlined),
          label: const Text("Reset"),
        ),
        const SizedBox(width: 8),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.red,
          ),
          onPressed: () {},
          child: const Text("Cancel"),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              )),
          onPressed: () {
            final mySnackBar = SnackBar(
              content: Text("Request berhasil"),
              duration: Duration(seconds: 3),
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.green,
            );
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
            setState(() {
              hasilRequest = true;
            });
          },
          child: const Text("Confirm"),
        ),
      ],
    );
  }

  Widget buildHasilRequest(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 75, vertical: 25),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
            ),
            child: Column(
              children: [
                const Text(
                  "Hasil Request Anda",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(width: 25, height: 8),
                Text("Nama Resep : ${namaController.text}"),
                const SizedBox(width: 20, height: 5),
                Text("Bahan Utama : ${bahan}"),
                const SizedBox(width: 20, height: 5),
                Text("Porsi Makanan : ${porsi}"),
                const SizedBox(width: 20, height: 5),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      hasilRequest = false;
                    });
                  },
                  child: const Text(
                    "Kembali",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
