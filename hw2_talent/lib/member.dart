import 'package:flutter/material.dart';
import 'package:hw2_talent/dataset.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroductionTeil extends StatelessWidget {
  const IntroductionTeil({super.key, required this.memberName});
  final String memberName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        personalData[memberName]!['introduction'],
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(0xff, 0x06, 0x3f, 0x5c),
        ),
      ),
    );
  }
}

class DetailTeil extends StatelessWidget {
  const DetailTeil({super.key, required this.memberName});
  final String memberName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        personalData[memberName]!['detail'],
        style: const TextStyle(
            fontSize: 20, color: Color.fromARGB(0xff, 0x06, 0x3f, 0x5c)),
      ),
    );
  }
}

class LinkTeil extends StatelessWidget {
  const LinkTeil({super.key, required this.link, required this.linkName});
  final String link, linkName;
  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('無法打開 $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchInBrowserView(Uri.parse(link)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border:
              Border.all(color: const Color.fromARGB(0xff, 0x06, 0x3f, 0x5c)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                linkName,
                style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(0xff, 0x06, 0x3f, 0x5c)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}

class LinksTeil extends StatelessWidget {
  const LinksTeil({super.key, required this.memberName});
  final String memberName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 4,
        children: personalData[memberName]!['links']
            .entries
            .map<Widget>(
                (entry) => LinkTeil(link: entry.value, linkName: entry.key))
            .toList(),
      ),
    );
  }
}

class MemberDetailPage extends StatelessWidget {
  const MemberDetailPage({super.key, required this.memberName});
  final String memberName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(memberName),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fixed_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Opacity(
                opacity: 0.5, child: Image.asset('assets/pr/$memberName.png')),
            Column(
              children: [
                IntroductionTeil(
                  memberName: memberName,
                ),
                DetailTeil(
                  memberName: memberName,
                ),
                LinksTeil(
                  memberName: memberName,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
