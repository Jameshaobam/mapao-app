import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:mapao_app/models/discover_get_model.dart';
import 'package:mapao_app/networking/fetch.dart';
import 'package:get/get.dart';

class DetailDiscoverPage extends HookWidget {
  const DetailDiscoverPage( {super.key});
  static String routeName = "/detail-discover";


  @override
  Widget build(BuildContext context) {
   var id =  Get.arguments["id"];
   final detail_discover = useQuery(["detail_discover"], () => getDiscoveryDetail(id)); 
    
    if (detail_discover.isLoading){
      return Center(child: CircularProgressIndicator(),);
    }
    if(detail_discover.isError){
      return Center(child: Text("Error: ${detail_discover.error}"),);
    }




     var detail_data = detail_discover.data!;


      Discover discover =  Discover.fromJson(detail_data[1]["data"]); //TODO:Already return as Map so no need for jsondecode

      log(detail_data[0][0].createdTime.toString());


    return SafeArea(child: Scaffold(body: Text("Detail page ${discover.id}"),));
  }
}