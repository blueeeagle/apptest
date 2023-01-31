
import 'package:demo/models/influencer_model.dart';
import 'package:get/get.dart';
final imageUrl = "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80";

class HomeScreenController extends GetxController
{

    String welcomeMsg= "Welcome";
    String userName = "Hari krishna";

    List<InfluencerModel> models = [InfluencerModel(imageUrl,"hari","100 k followers"),
      InfluencerModel(imageUrl,"hari","100 k followers"),
      InfluencerModel(imageUrl,"givi","200 k followers"),
      InfluencerModel(imageUrl,"ravi","300 k followers"),
      InfluencerModel(imageUrl,"hari","400 k followers"),
      InfluencerModel(imageUrl,"hari","500 k followers"),
      InfluencerModel(imageUrl,"hari","500 k followers"),
      InfluencerModel(imageUrl,"hari","100 k followers")

    ];
}