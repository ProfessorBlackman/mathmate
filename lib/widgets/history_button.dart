import 'package:flutter/material.dart';
import 'package:mathmate/state_management/history_model.dart';
import 'package:provider/provider.dart';

class HistoryButton extends StatelessWidget {
  ScrollController controller = ScrollController();
  HistoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40.0,
      onPressed: () {
        _showModal(context);
      },
      icon: const Icon(Icons.history),
      color: Colors.white54,
    );
  }

  void _showModal(BuildContext context) {
    HistoryModel historyModel =
        Provider.of<HistoryModel>(context, listen: false);
    Map<String, String> history = historyModel.history;
    showModalBottomSheet(
      backgroundColor: Colors.white60,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400,
          color: Colors.white12,
          child: Scrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            thickness: 20.0,
            scrollbarOrientation: ScrollbarOrientation.right,
              controller: controller,
              child: ListView.builder(
                controller: controller,
                  itemCount: historyModel.history.length,
                  itemBuilder: (context, index) {
                    final key = history.keys.elementAt(index);
                    final value = history[key];
                    return ListTile(
                      title: Text(key,
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.purple,
                        ),
                      ),
                      subtitle: Text(value!,
                        style: const TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    );
                  }),
          )
        );
      },
    );
  }
}
