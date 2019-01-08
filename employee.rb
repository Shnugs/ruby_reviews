employee_1 = ["Nick", "Cage", 70000, true]
employee_2 = ["Julia", "Andrwes", 80000, true]

puts "#{ employee_1[0] } #{ employee_1[1] } makes #{ employee_1[2] } per year."
puts "#{ employee_2[0] } #{ employee_2[1] } makes #{ employee_2[2] } per year."

employee_1 = {:first_name => "Nick", :last_name => "Cage", :salary => 70000, :active => true}
employee_2 = {:first_name => "Julia", :last_name => "Andrews", :salary => 80000, :active => true}

class Employee

  def initialize(first_name, last_name, salaray, currently_working)
    @first_name = first_name
    @last_name = last_name
    @salaray = salaray
    @currently_working = currently_working
  end

  def show_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salaray } per year"
    return nil
  end

  def currently_working?
    if @currently_working
      puts "#{ @first_name } #{ @last_name } is currently active."
    else
      puts "#{ @first_name } #{ @last_name } is not currently active."
    end
  end

end

emp_1 = Employee.new("Nick", "Cage", 70000, true)
emp_2 = Employee.new("Julia", "Andrwes", 80000, true)
