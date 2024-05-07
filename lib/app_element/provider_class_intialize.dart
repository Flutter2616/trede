import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../page/dash/dash_provider.dart';

List<SingleChildWidget> providerClass=[
  ChangeNotifierProvider(create: (context) => DashProvider(),),
];