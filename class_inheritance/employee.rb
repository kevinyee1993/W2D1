class Employee
  attr_reader :name, :title, :salary, :boss
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    bonus = (salary) * multiplier
  end


end

class Manager < Employee
  attr_reader :employee_arr
  def initialize(name, title, salary, boss, employee_arr)
    super(name, title, salary, boss)
    @employee_arr = employee_arr
  end

  def bonus(multiplier)
    sum = 0
    employee_arr.each do |person|
      sum += person.salary
    end
    sum * multiplier
  end
end

kevin = Employee.new('kevin','janitor',2, 'Lena')
lena = Manager.new('Lena', 'manager',100, 'god',[kevin,kevin])
p kevin.bonus(12)
p lena.bonus(12)
p lena.boss
p kevin.title
