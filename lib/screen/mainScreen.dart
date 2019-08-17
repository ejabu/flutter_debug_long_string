import 'package:flutter/material.dart';
import 'package:flutter_debug_long_string/screen/provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SaleOrderProvider>(
      builder: (_) {
        return SaleOrderProvider();
      },
      child: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  void openSaleOrder(BuildContext context) {
    var saleOrder = Provider.of<SaleOrderProvider>(context);

    print("----- Print longString ------");
    print(saleOrder.longString);

    print("----- Print _longString ------");
    print(saleOrder.privateLongString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Center(
        child: RaisedButton.icon(
          icon: Icon(Icons.attach_money),
          label: Text("Open Sales Order"),
          onPressed: () => openSaleOrder(context),
        ),
      ),
    );
  }
}
