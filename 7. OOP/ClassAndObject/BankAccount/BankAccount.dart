class Account {
  String ? _accNumber;
  String ? _accHolderId;
  double ? _balance;
  String ? _mobileNumber;
  String ? _address;
  
  // Account(this._accNumber, this._accHolderId, this._balance);
  // Account(this._accNumber, this._accHolderId, this._balance, [this._mobileNumber, this._address]);
  Account({required String accNumber, required String accHolderId, required double balance,
           String? mobileNumber, String? address}) {
    _accNumber = accNumber;
    _accHolderId = accHolderId;
    _balance = balance;
    _mobileNumber = mobileNumber;
    _address = address;
  }

  // ------------ NEED TO CREATE PROPERTY because of private(_) -------------
  // double getBalance() { return _balance!; }

  double get balance => this._balance!;

  void deposit(double amt) {
    this._balance = _balance! + amt;    
  }

  bool withdraw(double amt) {

    if (this._balance! >= amt) {
      this._balance = _balance! - amt;
      return true;
    }
    else return false;

  }

  bool transferTo(double amt, Account othAcc) {

      bool isWithdrawOk = withdraw(amt);

      if (isWithdrawOk) {
        othAcc.deposit(amt);  
        return true;
      }
      else return false;
  }

  @override
  String toString() {

    String str = "Account Number: $_accNumber, Accoount Holder Id: $_accHolderId, Balance: $_balance";
    if (_mobileNumber != null) {
      str = str + ", Mobile Number: $_mobileNumber";
    }
    if (_address != null) {
      str = str + ", Address: $_address";
    }
    return str;
  }

}

void main() {
  Account acc1 = new Account(accNumber: "1234567", accHolderId: "1", balance: 10000);
  Account acc2 = new Account(accNumber: "1234568", accHolderId: "2", balance: 5000);

  // encapsulation happens at library level, not at class level
  // that's why no error here
  print("\nSender's Account Balance - ${acc1._balance}");
  print("Receiver's Account Balance - ${acc2._balance}");  
}