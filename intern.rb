require "./employee.rb"
require "./reportable.rb"

module Actualize
  class Intern < Employee
    include Reportable 

    def send_report
      puts "Sending report..."
      # code to send report
      puts "Email sent."
    end
  end
end