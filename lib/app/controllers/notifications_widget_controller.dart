import 'package:balatlife/app/data/repositories/theme_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsWidgetController extends GetxController {
  final notifications = [
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
          'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': 'Deneme',
      'date': '25/12/2015',
      'content': 'Deneme Duyuru',
      'publisher': 'debneme@dene.me'
    },
    {
      'title': '2.Deneme',
      'date': '25/10/2016',
      'content':
      'Suspendisse dapibus finibus volutpat. Suspendisse cursus, nisi a mattis vulputate, nulla tortor ultricies est, condimentum porttitor turpis risus et diam. Morbi venenatis a tortor id blandit. Nam malesuada sed mauris non scelerisque. Sed molestie velit sed mauris efficitur suscipit eu eget urna. Aliquam euismod nec lacus fermentum interdum. In lacinia mauris ipsum, et tempus mi pellentesque a. Integer in commodo nisi. Maecenas quis fermentum nisi. Sed efficitur mauris vitae rutrum aliquet. Integer a nisl metus. Sed non ornare eros. Phasellus sollicitudin cursus magna, nec elementum magna pellentesque ut. In hac habitasse platea dictumst. Suspendisse lacinia eros in',
      'publisher': 'debneme@dene.me'
    },
  ];

  onTappedTile(int id) {
    Get.defaultDialog(
      title: notifications[id]['title']!,
      content: Container(
        height: Get.height / 2,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(flex: 3, child: Text("Date: ")),
                  Expanded(flex: 5, child: Text(notifications[id]['date']!))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(flex: 3, child: Text("Publisher: ")),
                  Expanded(
                      flex: 5, child: Text(notifications[id]['publisher']!))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text("Content:"),
              SizedBox(
                height: 8,
              ),
              Text(notifications[id]['content']!),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
      textCancel: "Kapat",
      cancelTextColor:
          ThemeProvider.instance.isDark ? Colors.white : Colors.black,
    );
  }
}
