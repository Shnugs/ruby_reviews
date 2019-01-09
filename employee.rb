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

  def give_annual_raise
    @salary *= 1.05
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

end

class Manager < Employee
  
  def send_report
    puts "Sending report..."
    # Report generating method yada yada
    puts "Email sent"
  end

end

employee_1 = Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Julie", 
                          last_name: "Andrwes", 
                          salary: 80000, 
                          active: true
                          )

employee_1.show_info
employee_2.show_info

manager = Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: true
                      )

manager.show_info
