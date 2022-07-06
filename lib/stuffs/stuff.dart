import '../custom_models/widget_models.dart';

class Stuff{
  static List<CustomWidget> customWidgets = [
    CustomWidget(name: 'Star rating', description: 'A 5 star rating', page: 'CustomStarRating'),
    CustomWidget(name: 'Pin View', description: 'A custom pin view for password input, etc. (max length up to 6)', page: 'CustomPinView'),
    CustomWidget(name: 'none', description: 'none', page: 'none'),
  ];
}