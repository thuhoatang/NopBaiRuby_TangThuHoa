require_relative "CandidateA"
require_relative "CandidateB"
require_relative "CandidateC"
require_relative "ManagerCandidate"

candidates_124 = []
managerCandidate_124 = ManagerCandidate.new

while(true)
    puts("\nquản lý các thi sinh dự thi đại học")
    puts("1: Thêm mới thí sinh")
    puts("2: Hiện thị thông tin của thí sinh và khối thi của thí sinh")
    puts("3: Tìm kiếm theo số báo danh.")
    puts("4: Exit")

    line_124 = gets.chomp.to_i
    
    case line_124
    when 1
        puts ("\nEnter a: Khối A")
        puts ("Enter b: Khối B")
        puts ("Enter c: Khối C")
        type_124 = gets.chomp
        case type_124
        when "a"
            puts("Số báo Danh: ")
            id_124 = gets.chomp
            puts("Họ tên: ")
            name_124 = gets.chomp
            puts("Địa chỉ: ")
            address_124 = gets.chomp
            puts("Độ ưu tiên: ")
            priority_124 = gets.chomp
            block = "A"
            khoiA_124 = CandidateA.new(id_124,name_124,address_124,priority_124,block)
            managerCandidate_124.addCandidate(candidates_124,khoiA_124)
        when "b"
            puts("Số báo Danh: ")
            id_124 = gets.chomp
            puts("Họ tên: ")
            name_124 = gets.chomp
            puts("Địa chỉ: ")
            address_124 = gets.chomp
            puts("Độ ưu tiên: ")
            priority_124 = gets.chomp
            block = "B"
            khoiB_124 = CandidateB.new(id_124,name_124,address_124,priority_124,block)
            managerCandidate_124.addCandidate(candidates_124,khoiB_124)
        when "c"
            puts("Số báo Danh: ")
            id_124 = gets.chomp
            puts("Họ tên: ")
            name_124 = gets.chomp
            puts("Địa chỉ: ")
            address_124 = gets.chomp
            puts("Độ ưu tiên: ")
            priority_124 = gets.chomp
            block = "C"
            khoiC_124 = CandidateC.new(id_124,name_124,address_124,priority_124,block)
            managerCandidate_124.addCandidate(candidates_124,khoiC_124)
            
        end

    when 2
        puts "Thông tin thi sinh"
        managerCandidate_124.showInfor(candidates_124)
    when 3
        puts "Nhập mã id để tìm kiếm: "
        id_rm_124 = gets.chomp
        puts "Kết quả tìm kiếm: "
        managerCandidate_124.searchCandidate(id_rm_124, candidates_124)
        
    when 4
        break
    end
end