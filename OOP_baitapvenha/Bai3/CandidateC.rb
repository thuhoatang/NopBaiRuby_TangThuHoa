require_relative "Candidate"
class CandidateC < Candidate
    MON_Van = "Văn"
    MON_Su = "Sử"
    MON_Dia = "Địa"
    attr_accessor :block
    def initialize(id_124,name_124,address_124,priority_124,block)
        super(id_124,name_124,address_124,priority_124)
        @block = block
    end
    def showInfor
        puts "Số báo danh: #{@id_124}, Họ tên: #{@name_124},Địa chỉ: #{@address_124}, Mức ưu tiêm: #{@priority_124},Môn: #{MON_Van}, #{MON_Su}, #{MON_Dia}"
    end
end