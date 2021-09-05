import 'package:flutter/material.dart';

class PasscodePage extends StatelessWidget {
  const PasscodePage({Key? key}) : super(key: key);

  Widget _buildButton(int num){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade400, width: 2.0),
        ),
        child: Center(child: Text('$num', style: TextStyle(fontSize:26),)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline, size: 80, color: Colors.grey.shade600,),
                    Text('กรุณาใส่รหัสผ่าน', style: TextStyle(fontSize: 24),)
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=1;i<=3;++i)
                      _buildButton(i)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=4;i<=6;++i)
                      _buildButton(i)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=7;i<=9;++i)
                      _buildButton(i)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                      ),
                    ),
                    _buildButton(0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: Center(child: Icon(Icons.backspace_outlined, size: 30, color: Colors.grey.shade600,)),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(onPressed: () {}, child: Text('ลืมรหัสผ่าน', style: TextStyle(fontSize: 18),)),
            )
          ],
        ),
      ),
    );
  }
}
