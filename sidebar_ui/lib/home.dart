import 'package:flutter/material.dart';

import 'models/transaction.dart';
import 'screens/user_menu.dart';
import 'widgets/New_Transaction.dart';
import 'widgets/SummaryCards.dart';
import 'widgets/TransactionList.dart';

import 'package:provider/provider.dart';
import 'package:sidebar_ui/providers/transaction_prov.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class SideBarApp extends StatefulWidget {
  @override
  _SideBarAppState createState() => _SideBarAppState();
}

class _SideBarAppState extends State<SideBarApp>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenHeight = 0.0, screenWidth = 0.0;
  Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _dashboardScaleAnimation;
  // Animation<double> _menuScaleAnimation;
  // Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _dashboardScaleAnimation =
        Tween<double>(begin: 1, end: 0.6).animate(_controller);
    // _menuScaleAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    // _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return ChangeNotifierProvider.value(
          value: Provider.of<Trx_Model>(ctx),
          child: GestureDetector(
            onTap: () {},
            child: NewTransaction(),
            behavior: HitTestBehavior.opaque,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return ChangeNotifierProvider(
      create: (_) => Trx_Model(),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: <Widget>[
            MenuScreen(),
            Dashboard(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Builder(
          builder: (ctx) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // print(Provider.of<Trx_Model>(ctx, listen: false).transactions);
              _startAddNewTransaction(ctx);
            },
          ),
        ),
      ),
    );
  }

  Widget Dashboard() {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.2 * screenWidth,
      child: ScaleTransition(
        scale: _dashboardScaleAnimation,
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: backgroundColor,
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    InkWell(
                      child: Icon(Icons.menu, color: Colors.white),
                      onTap: () {
                        setState(() {
                          if (isCollapsed)
                            _controller.forward();
                          else
                            _controller.reverse();
                          isCollapsed = !isCollapsed;
                        });
                      },
                    ),
                    Text(
                      'Passbook',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(Icons.settings, color: Colors.white),
                  ],
                ),
                SizedBox(height: 20),
                SummaryCards(),
                SizedBox(height: 20),
                TransactionList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
