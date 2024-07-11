import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookASlot extends StatefulWidget {
  const BookASlot({super.key});

  @override
  State<BookASlot> createState() => _BookASlotState();
}

class _BookASlotState extends State<BookASlot> {
  DateTime _selectedDate = DateTime.now();
  // get from API
  List<String> timings = ['09:00', '10:00', '17:30', '19:00', '19:30', '20:00'];
  String selectedTime = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Book a Slot',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 6, 12, 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(16),
            ),

            // CALENDAR
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // MONTH
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(255, 239, 230, 1),
                            ),
                            padding: const EdgeInsets.all(8.0),
                            child: const Icon(
                              Icons.calendar_month,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            DateFormat('MMMM').format(_selectedDate),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // DATE PICKER
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                        onPressed: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: _selectedDate,
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2030),
                            builder: (BuildContext context, Widget? child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                  primaryColor: const Color.fromRGBO(237, 109, 78, 1),
                                  colorScheme: const ColorScheme.light(
                                    primary: Color.fromRGBO(237, 109, 78, 1),
                                  ),
                                  buttonTheme: const ButtonThemeData(
                                    textTheme: ButtonTextTheme.primary,
                                  ),
                                ),
                                child: child!,
                              );
                            },
                          );
                          if (picked != null && picked != _selectedDate) {
                            setState(() {
                              _selectedDate = picked;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),

                // DATES
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(7, (index) {
                      DateTime startOfWeek = _selectedDate
                          .subtract(Duration(days: _selectedDate.weekday % 7));
                      DateTime date = startOfWeek.add(Duration(days: index));
                      return _buildDateColumn(date);
                    }),
                  ),
                ),
                const SizedBox(height: 20),

                // TIMINGS
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: timings.map((time) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: ChoiceChip(
                          backgroundColor:
                              const Color.fromRGBO(255, 239, 230, 1),
                          selectedColor: const Color.fromRGBO(237, 109, 78, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: const BorderSide(color: Colors.transparent),
                          ),
                          showCheckmark: false,
                          selected: selectedTime == time,
                          label: Text(
                            time,
                            style: TextStyle(
                              color: selectedTime == time
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onSelected: (selected) {
                            setState(() {
                              selectedTime = selected ? time : "";
                            });
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateColumn(DateTime date) {
    bool isSelected = date.day == _selectedDate.day &&
        date.month == _selectedDate.month &&
        date.year == _selectedDate.year;

    bool isPast = date.isBefore(DateTime.now().subtract(Duration(days: 1)));

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedDate = date;
        });
      },
      child: Column(
        children: [
          Text(
            DateFormat('d').format(date),
            style: TextStyle(
              color: isSelected
                  ? const Color.fromRGBO(237, 109, 78, 1)
                  : isPast
                      ? Colors.grey
                      : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            DateFormat('E').format(date),
            style: TextStyle(
              color: isSelected
                  ? const Color.fromRGBO(237, 109, 78, 1)
                  : isPast
                      ? Colors.grey
                      : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 2,
              width: 20,
              color: Colors.orange,
            ),
        ],
      ),
    );
  }
}
