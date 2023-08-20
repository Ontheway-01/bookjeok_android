import 'package:flutter/material.dart';

class LibraryTabBar extends StatefulWidget {
  const LibraryTabBar({Key? key}) : super(key: key);

  @override
  State<LibraryTabBar> createState() =>
      _LibraryTabBarState();
}

class _LibraryTabBarState extends State<LibraryTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 3, vsync: this);

  @override
  void initState() {
    tabController.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  // TabController 의 여부가 중요하다
  // TabController를 사용하면 DefaultTabController 없이도 연결이 된다.
  // 반대로 DefaultTabController 사용하면 TabController 없이 연결이 된다.
  Widget _body() {
    return Column(
      children: [
        _pageMoveButton(),
        _tabBar(),

        // Expanded 없으면 오류 발생
        // Horizontal viewport was given unbounded height.
        Expanded(child: _tabBarView()),
      ],
    );
  }

  Widget _tabBar() {
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      labelStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 16,
      ),
      tabs: const [
        Tab(text: "전체"),
        Tab(text: "읽은 책"),
        Tab(text: "읽고 있는 책"),
        Tab(text: "읽고 싶은 책"),
      ],
    );
  }

  Widget _tabBarView() {
    return TabBarView(
      controller: tabController,
      children: [
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text(
            "Page 1",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text(
            "Page 2",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text(
            "Page 3",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: const Text(
            "Page 4",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _pageMoveButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            /// TabBar는 애니메이션 없이 바로 이동하지만
            /// TabBarView는 화면 전환 애니메이션 발생
            tabController.index = 2;
          },
          child: const Text("페이지 이동"),
        ),
        ElevatedButton(
          onPressed: () {
            /// TabBar와 TabBarView 화면 전환 애니메이션 발생
            tabController.animateTo(2);
          },
          child: const Text("페이지 이동(애니메이션)"),
        ),
      ],
    );
  }
}
