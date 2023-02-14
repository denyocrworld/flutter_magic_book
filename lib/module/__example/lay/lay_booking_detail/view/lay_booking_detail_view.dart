import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LayBookingDetailView extends StatefulWidget {
  const LayBookingDetailView({Key? key}) : super(key: key);

  Widget build(context, LayBookingDetailController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: const Color(0xff181824),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.0,
                color: Colors.white,
              ),
            ),
            child: const BackButton(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.0,
                color: Colors.white,
              ),
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "No Way Home",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              "Spider-man",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 100.0,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var selected = index == 2;
                  return SizedBox(
                    width: 90,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 100.0,
                            width: 70,
                            decoration: BoxDecoration(
                              color: selected
                                  ? const Color(0xffd8554f)
                                  : const Color(0xff21222d),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  DateFormat("EEE").format(DateTime.now()
                                      .add(Duration(days: index))),
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "${index + 10}",
                                  style: const TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Color(0xff181824),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                              left: 4,
                            ),
                            child: const CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Color(0xff181824),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                              right: 4,
                            ),
                            child: const CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Color(0xff181824),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Container(
              height: 80.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.ibb.co/jRNMG32/Screenshot-8.png",
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: LayoutBuilder(builder: (context, constraint) {
                double size = (constraint.biggest.width - 80) / 8;
                List usedSeat = [4, 5, 10, 21, 28];
                List blockSeat = [0, 1, 6, 7, 24, 25, 30, 31];
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(32, (index) {
                    bool isUsedSeat = usedSeat.contains(index);
                    bool isBlocked = blockSeat.contains(index);
                    if (isBlocked) {
                      return SizedBox(
                        height: size,
                        width: size,
                      );
                    }
                    return Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color:
                            isUsedSeat ? Colors.white : const Color(0xff363644),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Text(
                        "$index",
                        style: const TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    );
                  }),
                );
              }),
            ),
            const Spacer(),
            SizedBox(
              height: 60.0,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    margin: const EdgeInsets.only(
                      right: 12.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xff20212c),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "20:30",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Dolby",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90.0,
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffcb413e),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: const [
              Expanded(
                child: Text("Buy 3 Ticket"),
              ),
              Text(
                "\$6.10",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LayBookingDetailView> createState() => LayBookingDetailController();
}
