# experimenting with classes: test code straight from article
class Customer(object):
    # Bank customer
    IBAN = '12345'

    def __init__(self, name, balance=0.0):
        self.name = name
        self.balance = balance

    def withdraw(self,amount):
        if amount > self.balance:
            raise RuntimeError('Insufficient balance')
        self.balance -= amount
        return self.balance

    def deposit(self,amount):
        self.balance += amount
        return self.balance

test = Customer('Test Name',100.0)
test.IBAN
