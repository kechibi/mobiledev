

import 'package:riverpod/riverpod.dart';
import 'package:simple_project/models/customer.dart';

class CustomerService{
  final Ref container;
  final List<Customer> _customer = [];

  CustomerService(this.container);

  void addCustomer(String name, String email){
    final newCustomer = Customer(name, email);
    _customer.add(newCustomer);
    print('$name (Email: $email) has been added.');
  }

  void viewCustomers(){
    if (_customer.isEmpty){
      print('No customers available.');
    } else{
      print(Customer);
    }
  }

    List<Customer> get customers => _customer;
}

