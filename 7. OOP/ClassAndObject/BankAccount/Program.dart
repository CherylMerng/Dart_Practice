import 'BankAccount.dart';

void main() {
  Account acc1 = new Account(accNumber: "1234561", accHolderId: "1", balance: 10000, mobileNumber: "83458678", address: "Clementi");
  Account acc2 = new Account(accNumber: "1234562", accHolderId: "2", balance: 5000, address: "Canberra");
  Account acc3 = new Account(accNumber: "1234563", accHolderId: "3", balance: 7000, mobileNumber: "81238456");
  Account acc4 = new Account(accNumber: "1234564", accHolderId: "4", balance: 9000);

  print("\n"+ acc1.toString());
  print(acc2.toString());
  print(acc3.toString());
  print(acc4.toString());

  // print("Balance - ${acc1.getBalance()}");
  print("\nBalance - ${acc1.balance}");

  acc1.deposit(5000);
  print("\nDeposit Successful!\nBalance - ${acc1.balance}");

  bool canWithdraw = acc1.withdraw(5000);
  if (canWithdraw) {
    print("\nWithdraw Successful!\nBalance - ${acc1.balance}");
  }
  else {
    print("\nThe withdraw amount exceeds the balance!\nBalance - ${acc1.balance}");
  }

  // ---------------------- Before Transfer -----------------------------
  print("\nSender's Account Balance - ${acc1.balance}");
  print("Receiver's Account Balance - ${acc2.balance}");

  bool canTransfer = acc1.transferTo(2500, acc2);
  if (canTransfer) {
    print("Transfer Successful!");
  }
  else {
    print("Transfer failed! The transfer amount exceeds the balance!");
  }

  // ---------------------- After Transfer ------------------------------
  print("\nSender's Account Balance - ${acc1.balance}");
  print("Receiver's Account Balance - ${acc2.balance}");
}