import 'package:flutter/material.dart';
import 'package:login/pages/home/components/list/item_list.dart';
import 'package:login/shared/themes/text_styles.dart';
import 'components/chart/chart_pie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olha a HomePage"),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 20.0),
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 10, right: 10, bottom: 25),
                child: Text.rich(
                  TextSpan(
                    text: 'Bem vindo ',
                    style: TextStyles.titleAppBar1,
                    children: [
                      TextSpan(
                          text: 'a Home Page', style: TextStyles.titleAppBar2)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ChartFlutter(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ItemList(
                    title: 'Exercício: ',
                    color: Color(0xff845bef),
                    value: '16%',
                    icon: Icons.run_circle,
                  ),
                  ItemList(
                    title: 'Trabalho: ',
                    color: Color(0xff13d38e),
                    value: '15%',
                    icon: Icons.work,
                  ),
                  ItemList(
                    title: 'Saúde: ',
                    color: Color(0xff0293ee),
                    value: '40%',
                    icon: Icons.medical_services,
                  ),
                  ItemList(
                    title: 'Estudo: ',
                    color: Color(0xfff8b250),
                    value: '30%',
                    icon: Icons.menu_book,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
