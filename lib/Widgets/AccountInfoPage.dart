import 'package:flutter/material.dart';
import 'package:pool_viewer/Model/AccountModel.dart';

class AccountInfoWidget extends StatelessWidget {
  final AccountModel account;
  AccountInfoWidget(this.account);

  @override
  Widget build(BuildContext context) {
    var payments = account.payments;
    var rewards = account.rewards;
    var sumrewards = account.sumrewards;
    List<String>? shares = account.shares;
    return Scaffold(
      body: Center(child: Column(
          children: <Widget>[
        Container(child: Text(account.currentHashrate.toString())),
        Container(child: Text(account.currentLuck.toString())),
        Container(child: Text(account.hashrate.toString())),
        Container(child: Text(account.pageSize.toString())),
        ExpansionPanelList(children: [ExpansionPanel(headerBuilder:(context,isTrue){return Text('Payments');}, body: Expanded(child: ListView.builder(itemCount: payments?.length,
            itemBuilder: (context,index){return ListTile(title: Row(
                children: <Widget>[
                  Expanded(child: Text(payments![index].amount.toString())),
                  Expanded(child: Text(payments[index].timestamp.toString())),
                  Expanded(child: Text(payments[index].tx.toString())),
                ]
            ));})))]),
            
            Expanded(child: ListView.builder(itemCount: payments?.length,
                                          itemBuilder: (context,index){return ListTile(title: Row(
                                            children: <Widget>[
                                              Expanded(child: Text(payments![index].amount.toString())),
                                              Expanded(child: Text(payments[index].timestamp.toString())),
                                              Expanded(child: Text(payments[index].tx.toString())),
                                          ]
                                          ));})),
        Container(child: Text(account.paymentsTotal.toString())),
            Expanded(child: ListView.builder(itemCount: rewards?.length,
                itemBuilder: (context,index){return ListTile(title: Row(
                    children: <Widget>[
                      Expanded(child: Text(rewards![index].reward.toString())),
                      Expanded(child: Text(rewards[index].timestamp.toString())),
                      Expanded(child: Text(rewards[index].percent.toString())),
                    ]
                ));})),
        Container(child: Text(account.roundShares.toString())),

            if(shares != null)
            Expanded(child: ListView.builder(itemCount: shares.length,
                itemBuilder: (context,index){return ListTile(title: Text(shares[index]));})),
            Expanded(child: ListView(children: [ Text(account.stats!.balance.toString()),
              Text(account.stats!.blocksFound.toString()),
              Text(account.stats!.immature.toString()),
              Text(account.stats!.lastShare.toString()),
              Text(account.stats!.paid.toString()),
              Text(account.stats!.pending.toString()),
              Text( account.stats!.pending! ? "Yes" : "No" ),
            ],)),
            Container(child: Text(account.currentLuck.toString())),
            Container(child: Text(account.currentLuck.toString())),
            Container(child: Text(account.currentLuck.toString())),
            Container(child: Text(account.currentLuck.toString())),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back'),
            ),
                 //Text(account.currentLuck),

          ]))

      );
  }

}

