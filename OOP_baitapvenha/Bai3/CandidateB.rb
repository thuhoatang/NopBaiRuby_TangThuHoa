require_relative "Candidate"
class CandidateB < Candidate
    MON_TOAN = "Toán"
    MON_SINH = "Sinh"
    MON_HOA = "Hóa"
    attr_accessor :block
    def initialize(id_124,name_124,address_124,priority_124,block)
        super(id_124,name_124,address_124,priority_124)
        @block = block
    end
    def showInfor
        puts "Số báo danh: #{@id_124}, Họ tên: #{@name_124},Địa chỉ: #{@address_124}, Mức ưu tiêm: #{@priority_124},Môn: #{MON_TOAN}, #{MON_SINH}, #{MON_HOA}"
    end
end