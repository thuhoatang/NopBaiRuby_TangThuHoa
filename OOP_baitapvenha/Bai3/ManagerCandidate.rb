require_relative "CandidateA"
require_relative "CandidateB"
require_relative "CandidateC"
class ManagerCandidate
    def initialize
    end

    def addCandidate(candidates_124,candidate_124)
        candidates_124.push(candidate_124)
    end


    def showInfor(candidates_124)
        for candidate_124 in candidates_124 do
            candidate_124.showInfor
        end
    end
 

    def searchCandidate(id_124, candidates_124)
        for candidate_124 in candidates_124 do
            if(candidate_124.id_124 == id_124)
                candidate_124.showInfor
            end
        end
    end
end 