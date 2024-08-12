

import 'package:riverpod/riverpod.dart';
import 'package:simple_project/services/customer_service.dart';
import 'package:simple_project/services/product_service.dart';
import 'package:simple_project/services/purchase_service.dart';

final productServiceProvider = Provider((ref) => ProductService(ref));
final customerServiceProvider = Provider((ref) => CustomerService(ref));
final purchaseServiceProvider = Provider((ref) => PurchaseService(ref));

