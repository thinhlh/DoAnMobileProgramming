import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the/screens/admin/admin_categories_screen.dart';
import 'package:the/screens/admin/admin_products_screen.dart';
import 'package:the/screens/admin/admin_stores_screen.dart';
import 'package:the/services/auth_api.dart';
import 'package:the/services/user_api.dart';
import 'package:the/utils/base_date_formatter.dart';
import 'package:the/widgets/navigative_action_card.dart';
import '/utils/const.dart' as Constant;

class AdminDashboard extends StatelessWidget {
  static const routeName = '/admin-dash-board';

  TextEditingController _fromDateController =
      TextEditingController(text: BaseDateFomatter.formatDate(DateTime.now()));
  TextEditingController _toDateController =
      TextEditingController(text: BaseDateFomatter.formatDate(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Constant.GENERAL_PADDING),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Revenue',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: Constant.SIZED_BOX_HEIGHT),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'From Date',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_today),
                          splashColor: Colors.transparent,
                          onPressed: () => showDatePicker(
                            helpText: 'Select From Date',
                            context: context,
                            initialDate: BaseDateFomatter.fromString(
                                _fromDateController.text),
                            firstDate: DateTime.fromMillisecondsSinceEpoch(0),
                            lastDate: DateTime.now(),
                            fieldLabelText: 'From Date',
                          ).then(
                            (value) => _fromDateController.text =
                                BaseDateFomatter.formatDate(value),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            Constant.BORDER_RADIUS,
                          ),
                        ),
                      ),
                      controller: _fromDateController,
                      readOnly: true,
                    ),
                  ),
                  SizedBox(width: Constant.SIZED_BOX_HEIGHT),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'To Date',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            Constant.BORDER_RADIUS,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () => showDatePicker(
                            context: context,
                            helpText: 'Select To Date',
                            initialDate: BaseDateFomatter.fromString(
                                _toDateController.text),
                            firstDate: DateTime.fromMillisecondsSinceEpoch(0),
                            lastDate: DateTime.now(),
                          ).then(
                            (value) => _toDateController.text =
                                BaseDateFomatter.formatDate(value),
                          ),
                          splashColor: Colors.transparent,
                        ),
                      ),
                      controller: _toDateController,
                      readOnly: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Constant.SIZED_BOX_HEIGHT,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('View Revenue'),
              ),
              SizedBox(height: Constant.SIZED_BOX_HEIGHT),
              Row(
                children: [
                  Expanded(
                    child: NavigativeActionCard(
                      icon: Icons.coffee_rounded,
                      title: 'Products',
                      color: Colors.brown.shade400,
                      onPressed: () => Navigator.of(context)
                          .pushNamed(AdminProductsScreen.routeName),
                    ),
                  ),
                  Expanded(
                    child: NavigativeActionCard(
                      icon: Icons.category,
                      title: 'Categories',
                      color: Colors.green,
                      onPressed: () => Navigator.of(context)
                          .pushNamed(AdminCategoriesScreen.routeName),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Constant.SIZED_BOX_HEIGHT),
              Row(
                children: [
                  Expanded(
                    child: NavigativeActionCard(
                      icon: Icons.store,
                      title: 'Stores',
                      color: Colors.blue,
                      onPressed: () => Navigator.of(context)
                          .pushNamed(AdminStoresScreen.routeName),
                    ),
                  ),
                  Expanded(
                    child: NavigativeActionCard(
                      icon: Icons.logout,
                      title: 'Log out',
                      color: Colors.black87,
                      onPressed: () => AuthAPI().signOut(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdminDashboardProvider with ChangeNotifier {
  Future<void> fetchProfit() {
    // return AdminDashboardService().fetchProfit
  }
}
