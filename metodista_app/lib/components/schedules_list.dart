import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlMaps = Uri.parse('https://goo.gl/maps/amwPCPCKP7KUAUJVA');
final Uri _urlCultos = Uri.parse('https://www.youtube.com/@IMCamposEliseos/streams');
final Uri _urlPower = Uri.parse('https://www.instagram.com/power.jvs');
final Uri _urlKids = Uri.parse('https://www.instagram.com/igrejadacrianca.metodista/');

class SchedulesList extends StatelessWidget {
  const SchedulesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        children: [
          GestureDetector(
            onTap: () => {_LaunchCultosUrl()},
            child: Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/cultos.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {_LaunchPowerUrl()},
            child: Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/juventude.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {_LaunchKidsUrl()},
            child: Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/kids.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {_LaunchMapsUrl()},
            child: Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/bebe-apontando.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

Future<void> _LaunchMapsUrl() async {
  if (!await launchUrl(_urlMaps)) {
    throw Exception('Não é possível abrir $_urlMaps');
  }
}

Future<void> _LaunchCultosUrl() async {
  if (!await launchUrl(_urlCultos)) {
    throw Exception('Não é possível abrir $_urlCultos');
  }
}

Future<void> _LaunchPowerUrl() async {
  if (!await launchUrl(_urlPower)) {
    throw Exception('Não é possível abrir $_urlPower');
  }
}

Future<void> _LaunchKidsUrl() async {
  if (!await launchUrl(_urlKids)) {
    throw Exception('Não é possível abrir $_urlKids');
  }
}