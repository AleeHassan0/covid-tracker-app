import 'package:covid_19/view/world_state.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases,totalDeaths,totalRecovered,active,critical,todayRecovered,test;
   DetailsScreen({
     required this.name,
  required this.image,
  required this.totalCases,
  required this.todayRecovered,
  required this.test,
  required this.totalDeaths,
  required this.critical,
     required this.active,
  required this.totalRecovered,
   });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height:MediaQuery.of(context).size.height*0.06 ,),
                      ReusableRow(title: 'Cases', value: widget.totalCases.toString()),
                      ReusableRow(title: 'Recovered', value: widget.totalRecovered.toString(),),
                      ReusableRow(title: 'Active', value: widget.active.toString(),),
                      ReusableRow(title: 'Critical', value: widget.critical.toString(),),
                      ReusableRow(title: 'Total Deaths', value: widget.totalDeaths.toString(),),
                      ReusableRow(title: 'Today Recovered', value:widget.todayRecovered.toString(),),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
