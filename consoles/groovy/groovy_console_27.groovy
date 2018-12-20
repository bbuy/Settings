import snapchat.adstats.deliverystats.protogen.DeliveryRegionProto

String MSG_FAILED_TO_GET_STATS_FROM_REGION = "Failed to get stats from region %s due to %s";
DeliveryRegionProto.DeliveryRegion x = (DeliveryRegionProto.DeliveryRegion)(6);
String a = String.format(MSG_FAILED_TO_GET_STATS_FROM_REGION, x.toString(), "aaaa");

