# defining employees using arrays
employee_1 = ["Nick", "Cage", 70000, true]
employee_2 = ["Julia", "Andrwes", 80000, true]

puts "#{ employee_1[0] } #{ employee_1[1] } makes #{ employee_1[2] } per year."
puts "#{ employee_2[0] } #{ employee_2[1] } makes #{ employee_2[2] } per year."

# defining employees using hashes
employee_1 = {first_name: "Nick", last_name: "Cage", salary: 70000, active: true}
employee_2 = {first_name: "Julia", last_name: "Andrews", salary: 80000, active: true}

# defining employees using a class
class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def show_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } per year"
    return nil
  end

  def hire
    if @active
      puts "#{ @first_name } #{ @last_name } already has a job."
    else
      @active = true
      puts "You just booked #{ @first_name } #{ @last_name }."
    end
  end

  def fire
    if @active
      @active = false
      puts "#{ @first_name } #{ @last_name } has been fired!"
    else
      puts "#{ @first_name } #{ @last_name } isn't even working. You can't fire them."
    end
  end

  def active?
    if @active
      puts "#{ @first_name } #{ @last_name } is currently employed."
    else
      puts "#{ @first_name } #{ @last_name } is not currently employed."
    end
  end

  def get_promotion
    @salary *= 1.05
  end

end

# employee_2 = Employee.new("Julia", "Andrwes", 80000, true)

employee_1 = Employee.new({first_name: "Nick", last_name: "Cage", salary: 70000, active: true})
employee_1.active?
employee_1.fire 
employee_1.active?
