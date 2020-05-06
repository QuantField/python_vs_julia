
class Employee:

    emp_count = 0

    def __init__(self, name, salary):
        Employee.emp_count += 1
        self.name = name
        self.salary = salary 

    @classmethod    
    def display_employee_count(cls):
        print("Total Employees: {}".format(cls.emp_count))
         
    def __str__(self):
        return "Employee (Name: {}, Salary: {})".format(self.name, self.salary)



emp1 = Employee("Zara", 2000)
emp2 = Employee("Manni", 5000)

print(emp1)
print(emp2)

Employee.display_employee_count()