import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


// Run Time Errors In the Code.
void main(List<String> args) {
  runApp(const Awidget05());
}

class Awidget05 extends StatefulWidget {
  const Awidget05({super.key});

  @override
  State<Awidget05> createState() => _Awidget05State();
}

class _Awidget05State extends State<Awidget05> 
{
  final items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void additem()
  {
    items.insert(0, "Item ${items.length +1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void removeItem(int index)
  {
    _key.currentState!.removeItem(
    index, 
    (_, animation) {
      return SizeTransition(
      sizeFactor: animation,
      child: const Card(
      margin: EdgeInsets.all(10),
      color: Colors.red,
      child: ListTile(
        title: Text(
          "Deleted",
          style: TextStyle(fontSize: 24),
        ),
      ),),
      );
    },
    duration: const Duration(milliseconds: 300)
    );
    items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) 
  {
    return Column(
      children: [
        const SizedBox(height: 10,),
        IconButton(onPressed: additem, icon: const Icon(Icons.add)),
        Expanded(child: AnimatedList(key: _key,initialItemCount: 0,padding: EdgeInsets.all(10),itemBuilder: (context, index, animation) {
          return SizeTransition(sizeFactor: animation, key: UniqueKey(),
          child: Card(
            margin: const EdgeInsets.all(10),
            color:Colors.orangeAccent,
            child: ListTile(
              title: Text(
                items[index],
                style: const TextStyle(fontSize: 24),
              ),
              trailing: IconButton(icon: const Icon(Icons.delete),
              onPressed: (){
                removeItem(index);
              },),
            ),
          ),);
        },))
      ],
    );
  }
}