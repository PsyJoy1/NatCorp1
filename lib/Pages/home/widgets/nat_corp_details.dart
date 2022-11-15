import 'package:flutter/material.dart';
import 'package:natcorp/Pages/home/models/details.dart';
import 'package:natcorp/Pages/home/widgets/nat_corp.dart';

// this is like job_list
class NatCorpDetails extends StatelessWidget {
  final natcorpDetails = details.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 25),
        height: 150,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => NatCorp(natcorpDetails[index]),
            separatorBuilder: (_, index) => SizedBox(width: 15),
            itemCount: natcorpDetails.length));
  }
}
