import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:project/const/colors.dart';
import 'package:project/widget/custom_list_tile.dart';
import 'package:project/widget/page_template/sliver_screen.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSliver(
      appBar: SliverAppBar(
        pinned: true,
        backgroundColor: bgColor,
        leading: const Icon(
          MaterialCommunityIcons.sort_variant,
          color: Colors.black,
        ),
        title: const Icon(
          Ionicons.location_outline,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: IconButton(
                  onPressed: () {
                    print("hello");
                  },
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
      slivers: [
        const SliverToBoxAdapter(
          child: NotificationsSearch(),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const NotificationItem(),
              const NotificationItemStatusChanged(),
              const NotificationItemOrderChanged(),
              const NotificationItemNewMessageInOrder()
            ]),
          ),
        )
      ],
    );
  }
}

class NotificationsSearch extends StatelessWidget {
  const NotificationsSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 0),
          borderRadius: BorderRadius.circular(25),
        ),
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[600]),
              hintText: "Поиск по номеру зказа",
              fillColor: Colors.white),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomListTile(
              leading: const CircleAvatar(
                radius: 20,
                child: Icon(
                  MaterialCommunityIcons.heart_outline,
                  size: 20,
                ),
              ),
              children: [
                const Text(
                  "10:34",
                  style: TextStyle(color: Colors.grey),
                ),
                const Text(
                    "У вашего избранного места появилосась новая категория блюд"),
                Container(
                  
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  child: const Card(
                    elevation: 0,
                    color: bgColor,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Макдональдс"),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Перейти в карточку места"))
              ]),
        ),
      ),
    );
  }
}

class NotificationItemStatusChanged extends StatelessWidget {
  const NotificationItemStatusChanged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomListTile(
              leading: const CircleAvatar(
                radius: 15,
                child: Icon(
                  MaterialCommunityIcons.heart_outline,
                  size: 17,
                ),
              ),
              children: [
                const Text(
                  "10:34",
                  style: TextStyle(color: Colors.grey),
                ),
                const Text("Изменился статус заказа №13124 "),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  child: const Card(
                    elevation: 0,
                    color: bgColor,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("В работе -> Доставлен"),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {}, child: const Text("Перейти в заказ"))
              ]),
        ),
      ),
    );
  }
}

class NotificationItemOrderChanged extends StatelessWidget {
  const NotificationItemOrderChanged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomListTile(
              leading: const CircleAvatar(
                radius: 20,
                child: Icon(
                  MaterialCommunityIcons.heart_outline,
                  size: 20,
                ),
              ),
              children: [
                const Text(
                  "10:34",
                  style: TextStyle(color: Colors.grey),
                ),
                const Text("Изменился статус заказа №13124 "),
               
                TextButton(
                    onPressed: () {}, child: const Text("Перейти в заказ"))
              ]),
        ),
      ),
    );
  }
}

class NotificationItemNewMessageInOrder extends StatelessWidget {
  const NotificationItemNewMessageInOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomListTile(
              leading: const CircleAvatar(
                radius: 20,
                child: Icon(
                  MaterialCommunityIcons.heart_outline,
                  size: 20,
                ),
              ),
              children: [
                const Text(
                  "10:34",
                  style: TextStyle(color: Colors.grey),
                ),
                const Text("Новое сообщение в заказе №13124 "),
                
                TextButton(
                    onPressed: () {}, child: const Text("Перейти в заказ"))
              ]),
        ),
      ),
    );
  }
}
