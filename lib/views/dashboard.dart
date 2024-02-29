import 'package:flutter/material.dart';
import 'insert_view.dart';
import 'show_view.dart';
import 'update_view.dart';
import 'delete_view.dart';
import 'print_view.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0), 
        child: AppBar(
          automaticallyImplyLeading: false,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          InsertView(),
          ShowView(),
          UpdateView(),
          DeleteView(),
          PrintView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800], 
        selectedItemColor: const Color(0xFF2F308A), 
        unselectedItemColor: Colors.grey, 
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded, size: 28), 
            label: 'Tambah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility_rounded, size: 28), 
            label: 'Lihat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_rounded, size: 28), 
            label: 'Update',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete_outline_rounded, size: 28), 
            label: 'Delete',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print_rounded, size: 28), 
            label: 'Print',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(color: Color(0xFF2F308A)), 
        unselectedLabelStyle: const TextStyle(color: Colors.grey), 
        iconSize: 36, 
      ),
    );
  }
}
