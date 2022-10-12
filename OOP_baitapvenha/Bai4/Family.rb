require_relative "Person"

class Family < Person
    attr_accessor :name_124, :age_124, :job_124, :passport_124 ,:address_124

    def initialize(name_124, age_124, job_124, passport_124, address_124)
        super(name_124, age_124, job_124, passport_124)
        @address_124 = address_124
    end

    def show
        puts "Name: #{@name_124}, age: #{@age_124}, job: #{@job_124}, passport: #{@passport_124}, address: #{@address_124}"
    end
end