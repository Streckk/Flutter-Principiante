import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
 
// stateful widget created for calendar class
class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}
 
class _CalendarState extends State<Calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: <Widget> [
        SizedBox(height:MediaQuery.of(context).size.width-360,),
        TableCalendar(
          calendarStyle: const CalendarStyle(
            todayDecoration: BoxDecoration(
              color: Color.fromRGBO(14, 37, 73, 1), 
              shape: BoxShape.circle
              ),
              
           ),
           headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
           ),
          focusedDay: _focusedDay, 
          firstDay: DateTime.utc(2000,1,1), 
          lastDay: DateTime.utc(2050,1,1), 
          onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            // Call `setState()` when updating the selected day
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            setState(() {
              _calendarFormat = format;
            });
          }
        },
        onPageChanged: (focusedDay) {
          // No need to call `setState()` here
          _focusedDay = focusedDay;
        },
        ),
        const SizedBox(height: 35,),
        SingleChildScrollView(
                 child: 
                    Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height-500,
                    color: const Color.fromRGBO(44, 96, 176, 1),
                    padding: EdgeInsets.only(left: 30),
                    child:
                    
                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: <Widget>[
                                  const SizedBox(height: 35,),
                                  const Text('Habitos del día',style: TextStyle(fontSize: 24,color: Colors.white,fontStyle: FontStyle.normal)),
                                  const SizedBox(height: 5,),
                                  
                                ],
                              ),
                              
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              const SizedBox(height: 15,),
                              MaterialButton(
                                color: Color.fromRGBO(21, 6, 56, 100),
                                shape: const CircleBorder(),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(25),
                                  child: Text('0', style: TextStyle(color: Colors.white, fontSize: 26),),
                                ),
                              ) 
                            ],)
                            ],
                          ),
                        ),
                       
                         
                    ),
              ), 
      ]
      
      ),
      
    ); 
  }
 }