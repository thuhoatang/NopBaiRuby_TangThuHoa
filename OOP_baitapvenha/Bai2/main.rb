require_relative "tapchi"
require_relative "sach"
require_relative "bao"
require_relative "quanlysach"

documents_124 = []
managerDocument_124 = ManagerDocument.new

while(true)
    puts("\nTài liệu Trình quản lý Ứng dụng")
    puts("1: Chèn tài liệu")
    puts("2: Để tìm kiếm tài liệu theo danh mục")
    puts("3: Để hiển thị thông tin tài liệu")
    puts("4: Để xóa tài liệu theo id")
    puts("5: Exit")

    line_124 = gets.chomp.to_i

    case line_124
    when 1
        puts("\nEnter a: Thêm Sách")
        puts("Enter b: to Thêm Báo")
        puts("Enter c: to Thêm Tập chí")
        type_124 = gets.chomp

        case type_124
        when "a"
            puts("Ma TL: ")
            maTL_124 = gets.chomp
            puts("Tên nxb: ")
            tenNXB_124 = gets.chomp
            puts("Số bản phát hành: ")
            soBPH_124 = gets.chomp
            puts("Tên tác giả: ")
            tenTG_124 = gets.chomp
            puts("Số trang: ")
            soTrang_124 = gets.chomp

            book_124 = Sach.new(maTL_124, tenNXB_124, soBPH_124, tenTG_124, soTrang_124)
            managerDocument_124.addDocument(documents_124, book_124)
        when "b"
            puts("Ma TL: ")
            maTL_124 = gets.chomp
            puts("Tên nxb: ")
            tenNXB_124 = gets.chomp
            puts("Số bản phát hành: ")
            soBPH_124 = gets.chomp
            puts("ngày phát hành:")
            ngayPH_124 = gets.chomp

            newspaper_124 = Bao.new(maTL_124, tenNXB_124, soBPH_124, ngayPH_124)
            managerDocument_124.addDocument(documents_124, newspaper_124)
        when "c"
            puts("Ma TL: ")
            maTL_124 = gets.chomp
            puts("Tên nxb: ")
            tenNXB_124 = gets.chomp
            puts("Số bản phát hành: ")
            soBPH_124 = gets.chomp
            puts("số phát hành: ")
            soPH_124 = gets.chomp
            puts("Tháng phát hành: ")
            thangPH_124 = gets.chomp

            journal_124 = Tapchi.new(maTL_124, tenNXB_124, soBPH_124, soPH_124, thangPH_124)
            managerDocument_124.addDocument(documents_124, journal_124)
        end
    when 2
        puts("a :tìm kiếm sách")
        puts("b :tìm kiếm báo")
        puts("c :tìm kiếm tạp chí")
        choice_124 = gets.chomp

        case choice_124
        when "a"
            puts "sách:"
            managerDocument_124.searchByBook(documents_124)
        when "b"
            puts "báo:"
            managerDocument_124.searchByNewspaper(documents_124)
        when "c"
            puts "tạp chí:"
            managerDocument_124.searchByJournal(documents_124)
        end
    when 3
        puts "Thông tin tài liệu"
        managerDocument_124.showInfor(documents_124)
    when 4
        puts "Nhập mã id để loại xóa: "
        id_rm_124 = gets.chomp
        managerDocument_124.deleteDocument(id_rm_124, documents_124)
        puts "Danh sách tài liệu: "
        managerDocument_124.showInfor(documents_124)
    when 5
        puts "Exits"
        return
    else
        puts "Invalid"
    end
end