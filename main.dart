
class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Show card information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Top up the card
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Pay bus fare
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}


class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor
  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  // Override showInfo
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Override pay
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;

    print('Student discount: $off RWF');

    super.pay(fare - off);
  }
}


void main() {
  // My numbers: D = 04, L = 4
  // Starting balance = 1040 RWF
  // Bus fare = 204 RWF
  // Student discount = 14%

  // Create a BusCard
  BusCard card = BusCard('Nafisa', 1040);

  // Test the setter
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change owner to full name
  card.owner = 'Nafisa Ahmed Hassan Musa';
  card.showInfo();

  // TODO 6: Test top up
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay bus fare two times
  card.pay(204);
  card.pay(204);
  card.showInfo();

  // TODO 8: Create a StudentCard
  StudentCard student = StudentCard(
    'Nafisa Ahmed Hassan Musa',
    1040,
    14
  );

  // TODO 9: Pay bus fare and show information
  student.pay(204);
  student.showInfo();
}
