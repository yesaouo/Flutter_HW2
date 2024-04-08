import 'package:flutter/material.dart';
import 'package:hw2_talent/dataset.dart';
import 'package:hw2_talent/member.dart';

class MembersGrid extends StatelessWidget {
  const MembersGrid({super.key, required this.group});
  final List<String> group;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/fixed_bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 7 / 8,
        ),
        itemCount: group.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MemberDetailPage(memberName: group[index]),
                ),
              );
            },
            child: Column(
              children: [
                Image.asset('assets/thumb/${group[index]}.png'),
                Text(
                  group[index],
                  style: const TextStyle(
                    color: Color.fromARGB(0xff, 0x06, 0x3f, 0x5c),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class MembersTab extends StatelessWidget {
  const MembersTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> tabs = groupList.map((group) => Tab(text: group)).toList();
    List<MembersGrid> tabBarViewChildren = groupList.map((group) => MembersGrid(group: findGroup(group))).toList();

    return DefaultTabController(
      length: groupList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/head_l_in.png'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          bottom: TabBar(
            isScrollable: true,
            labelColor: const Color.fromARGB(0xff, 0x56, 0xc6, 0xfd),
            unselectedLabelColor: Colors.white60,
            indicatorColor: const Color.fromARGB(0xff, 0x11, 0x6e, 0x9b),
            tabs: tabs,
          ),
        ),
        body: Center(
          child: TabBarView(
            children: tabBarViewChildren,
          ),
        ),
      ),
    );
  }
}
