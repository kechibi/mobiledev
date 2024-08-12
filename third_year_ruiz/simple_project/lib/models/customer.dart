class Customer {
    String name;  
    String email;

    Customer(this.name,  this.email);

    @override
    String toString(){
    return "name $name($email;)";
  }
}