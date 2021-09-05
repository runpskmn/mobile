import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThaiFont extends StatefulWidget {
  const ThaiFont({Key? key}) : super(key: key);

  @override
  _ThaiFontState createState() => _ThaiFontState();
}

class _ThaiFontState extends State<ThaiFont> {
  List<String> fontList = ["Sarabun", "Prompt", "Kanit", "Itim", "Sriracha",
    "Pattaya", "Kodchasan", "Chonburi", "Srisakdi", "Charm"];
  Map<String, Widget> textWidget = {
    "Sarabun" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.sarabun(fontSize: 58.0), textAlign: TextAlign.center),
    "Prompt" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.prompt(fontSize: 58.0), textAlign: TextAlign.center),
    "Kanit" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.kanit(fontSize: 58.0), textAlign: TextAlign.center),
    "Itim" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.itim(fontSize: 58.0), textAlign: TextAlign.center),
    "Sriracha" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.sriracha(fontSize: 58.0), textAlign: TextAlign.center),
    "Pattaya" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.pattaya(fontSize: 58.0), textAlign: TextAlign.center),
    "Kodchasan" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.kodchasan(fontSize: 58.0), textAlign: TextAlign.center),
    "Chonburi" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.chonburi(fontSize: 58.0), textAlign: TextAlign.center),
    "Srisakdi" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.srisakdi(fontSize: 58.0), textAlign: TextAlign.center),
    "Charm" : Text("การเดินทางขากลับคงจะเหงาน่าดู", style: GoogleFonts.charm(fontSize: 58.0), textAlign: TextAlign.center)
  };
  String fonrName = "Sarabun";

  Widget _buildButton(String fontName){
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ElevatedButton(onPressed: (){
        setState(() {
          fonrName = fontName;
        });
      }, child: Text(fontName, style: TextStyle(fontSize: 15),)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THAI FONT VIEWER"),
      ),
      body: Container(
        color: Colors.blue.shade50,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: textWidget[fonrName],
                    ),
                  )
              ),
              Column(
                children: [
                  Center(
                    child: Text("Font : $fonrName", style: TextStyle(fontSize: 18),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                    child: Card(
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: fontList.map((e) => _buildButton(e)).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
