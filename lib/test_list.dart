/*
*1กค-5533-57
  2กค-6087-61
  3กค-6230-41
  4กค-5916-44
  5กค-6166-50
 * */

void main(){

  List<Map<String, dynamic>> reportList = [
    {'date': '1กค', 'case' : 5533, 'death' : 57},
    {'date': '2กค', 'case' : 6087, 'death' : 61},
    {'date': '3กค', 'case' : 6230, 'death' : 41},
    {'date': '4กค', 'case' : 5916, 'death' : 44},
    {'date': '5กค', 'case' : 6166, 'death' : 50},
  ];

  reportList.forEach((Map<String, dynamic> item){
    print('วันที่ ${item['date']}, ติดเชื้อ ${item['case']}, เสียชีวิต ${item['death']}');
  });
}