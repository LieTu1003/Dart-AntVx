import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  // 取得用于显示dart是否连接成功的div
  final div = querySelector("#connect") as DivElement;
  div.text = "dart connected!";
  div.style.color = 'red';

  // 从js上下文中获取chart类
  var chart = context['chart'];
  // 构件js型的变量data
  var data = JsObject.jsify([
    {'brand': 'Nike', 'sales': 150},
    {'brand': 'Adidas', 'sales': 100},
    {'brand': 'LiNing', 'sales': 80},
    {'brand': 'Anta', 'sales': 60}
  ]);
  // 调用chart的source与render函数向其传入新的数据并使其重新渲染
  chart.callMethod('source', [data]);
  chart.callMethod('render', []);

  print('data updated');
}
