const GLOBALS = Dict(:empCount=>0)
#  prefix : means symbol,                
                   
struct Employee    
    name::String   
    salary::Float64
   
    function Employee(name::AbstractString, sal::Real)
        GLOBALS[:empCount] += 1
        new(name, sal)
    end
end


display_employee_count() = println("Total Employees: $(GLOBALS[:empCount])")
# could also  do
# display_count(::Type{Employee})

# Base.show will be called any time Julia wants to display an Employee (for example, 
# just do emp1 in the REPL
function Base.show(io::IO, emp::Employee)
    println(io, "Employee (Name: $(emp.name), Salary: $(emp.salary))")
end
   

emp1 = Employee("Zara", 2000)
emp2 = Employee("Manni", 5000)

show(emp1)
show(emp2)

display_employee_count()