import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({super.key});

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  final _scrollController = ScrollController();
  double _offset = 0;

  final Logger _logger = Logger();
  void _listener() {
    setState(() {
      _offset = _scrollController.offset;
      _logger.d(_offset);
    });
  }

  void initState() {
    _scrollController.addListener(_listener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        const SliverAppBar(
          elevation: 0.0,
          expandedHeight: 120.0,
          backgroundColor: Colors.blue,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$ 50,000.00',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(
            children: [
              Container(
                  height: 800.0,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorDark,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Container(
                    height: 800.0,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ))),
              )
            ],
          )
        ]))
      ],
    );
  }
}
