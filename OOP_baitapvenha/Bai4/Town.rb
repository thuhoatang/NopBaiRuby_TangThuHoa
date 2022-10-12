require_relative "Family"
require_relative "Person"

class Town < Family
    # attr_accessor :families
    def initialize()
        @families_124 = []
    end

    def addFamily(family_124)
        @families_124 << family_124
    end

    def showFamilyMembers()
        @families_124.each do |member_124|
            member_124.show()
        end
    end
end