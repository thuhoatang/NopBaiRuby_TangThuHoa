require_relative "Person"
require_relative "Family"
require_relative "Town"

town_124 = Town.new

while true
    puts "Enter number town:"
    n_124 = gets.chomp.to_i
    for i in 0..n_124-1
        puts "\n----------Town #{i+1}:----------"
        # Input foreach family
        puts "Enter address:"
        address_124 = gets.chomp

        # Enter person number in family
        puts "Enter number person:"
        number_124 = gets.to_i

        for j in 0..number_124-1
            # Input person for famil
            puts "\nMember #{j+1}:"
            puts "Enter name:"
            name_124 = gets.chomp
            puts "Enter age:"
            age_124 = gets.to_i
            puts "Enter job:"
            job_124 = gets.chomp
            puts "Enter passport:"
            passport_124 = gets.chomp

            family_124 = Family.new(name_124, age_124, job_124, passport_124, address_124)
            town_124.addFamily(family_124)
        end
    end

    # After done input
    puts "\n---------Towns---------"
    town_124.showFamilyMembers()
end
