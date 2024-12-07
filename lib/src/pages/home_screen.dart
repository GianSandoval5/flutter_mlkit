// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_ml_kit/src/pages/DetailScreen.dart';
import 'package:flutter_ml_kit/src/pages/code_barras_page.dart';
import 'package:flutter_ml_kit/src/pages/digital_recognition.dart';
import 'package:flutter_ml_kit/src/pages/identify_languaje.dart';
import 'package:flutter_ml_kit/src/pages/scan_document.dart';
import 'package:flutter_ml_kit/src/pages/translations_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> itemsList = [
    'Reconocimiento de tinta digital',
    'Identificación de idioma',
    'Traducción de texto',
    'Escáner de documentos',
    'Escáner de código de barras',
    'Escáner de texto',
    'Escáner de etiquetas',
    'Detección de rostros',
  ];

  //lista de iconos
  List<IconData> iconsList = [
    Icons.gesture,
    Icons.language,
    Icons.translate,
    Icons.picture_as_pdf,
    Icons.qr_code,
    Icons.text_fields,
    Icons.label,
    Icons.face,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('ML Kit Demo', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(iconsList[index]),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: Text(
                  itemsList[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DigitalInkView()),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LanguageIdentifierView()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LanguageTranslatorView()),
                      );
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DocumentScannerView()),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CodeBarrasPage()),
                      );
                      break;
                    default:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                          settings: RouteSettings(arguments: itemsList[index]),
                        ),
                      );
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
