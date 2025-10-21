import 'package:chsu_schedule_app/main.dart';
import 'package:chsu_schedule_app/widgets/schedule_card.dart';
import 'package:flutter/material.dart';

class ScheduleQueryView extends StatelessWidget {
  final String _title;
  final List<ScheduleCard>? _dayCards;

  const ScheduleQueryView({
    super.key,
    required String title,
    List<ScheduleCard>? cards,
  }) : _title = title,
       _dayCards = cards;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Divider(color: ChsuApp.chsuMainColor, thickness: 2.0),
        const SizedBox(height: 10),

        if (_dayCards != null && _dayCards.isNotEmpty)
          ...(_dayCards.map((card) => card))
        else
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'По заданным параметрам не найдено расписание. Задайте другие параметры запроса.',
            ),
          ),

        const SizedBox(height: 20),
      ],
    );
  }
}
