require_relative "Oto"
require_relative "Xemay"
require_relative "Xetai"
require_relative "Quanliptgt"

phuongtiens = []
quanliptgt = Quanliptgt.new

while(true)
    puts("\nquản lý các phương tiện giao thông")
    puts("1: Thêm mới Phương tiện")
    puts("2: Hiện thị danh sách")
    puts("3: Xóa(id) các phương tiện thuộc các loại trên")
    puts("4: Tìm phương tiện theo hãng sản xuất, màu, biển số")
    puts("5: Thoát")
    line = gets.chomp.to_i
    
    case line
    when 1
        puts ("\nEnter a: Oto")
        puts ("Enter b: Xe máy")
        puts ("Enter c: Xe tải")
        type = gets.chomp
        case type
        when "a"
            puts ("Mã phương tiện: ")
            id= gets.chomp
            puts ("Hãng sản suất: ")
            hangsx= gets.chomp
            puts ("Năm sản xuất: ")
            namsx= gets.chomp
            puts ("Dòng xe: ")
            dongxe= gets.chomp
            puts ("Giá bán: ")
            giaban= gets.chomp
            puts ("Biển số: ")
            bienso= gets.chomp
            puts ("Màu xe: ")
            mauxe= gets.chomp
            puts ("Số chỗ ngồi: ")
            sochongoi= gets.chomp
            puts ("Kiểu động cơ: ")
            kieudongco= gets.chomp
            puts ("Nhiên liệu: ")
            nhienlieu= gets.chomp
            puts ("Số túi khí: ")
            sotuikhi= gets.chomp
            puts ("Ngày đăng kiểm: ")
            ngaydangkiem= gets.chomp
            
            oto = Oto.new(id,hangsx,namsx,dongxe,giaban,bienso,mauxe,sochongoi,kieudongco,nhienlieu,sotuikhi,ngaydangkiem)
            quanliptgt.add(phuongtiens,oto)
        when "b"
            puts ("Mã phương tiện: ")
            id= gets.chomp
            puts ("Hãng sản suất: ")
            hangsx= gets.chomp
            puts ("Năm sản xuất: ")
            namsx= gets.chomp
            puts ("Dòng xe: ")
            dongxe= gets.chomp
            puts ("Giá bán: ")
            giaban= gets.chomp
            puts ("Biển số: ")
            bienso= gets.chomp
            puts ("Màu xe: ")
            mauxe= gets.chomp
            puts ("Công suất: ")
            congsuat= gets.chomp
            puts ("Dung tích bình xăng: ")
            dungtichxang= gets.chomp     
            xemay = Xemay.new(id,hangsx,namsx,dongxe,giaban,bienso,mauxe,congsuat,dungtichxang)
            quanliptgt.add(phuongtiens,xemay)
        when "c"
            puts ("Mã phương tiện: ")
            id= gets.chomp
            puts ("Hãng sản suất: ")
            hangsx= gets.chomp
            puts ("Năm sản xuất: ")
            namsx= gets.chomp
            puts ("Dòng xe: ")
            dongxe= gets.chomp
            puts ("Giá bán: ")
            giaban= gets.chomp
            puts ("Biển số: ")
            bienso= gets.chomp
            puts ("Màu xe: ")
            mauxe= gets.chomp
            puts ("Trọng tải: ")
            trongtai= gets.chomp    
            xetai = Xetai.new(id,hangsx,namsx,dongxe,giaban,bienso,mauxe,trongtai)
            quanliptgt.add(phuongtiens,xetai)
            
        end

    when 2
        puts "Hiện thị danh sách"
        quanliptgt.show(phuongtiens)

    when 3
        puts "Nhập mã id để xóa: "
        id_rm = gets.chomp
        quanliptgt.delete(id_rm, phuongtiens)
        puts "Danh sách tài liệu: "
        quanliptgt.show(phuongtiens)
    
    when 4
        puts("a :tìm kiếm Hãng sản xuất")
        puts("b :tìm kiếm Màu xe")
        puts("c :tìm kiếm Biển số")
        choice = gets.chomp

        case choice
        when "a"
            puts "Nhập Hãng sản xuất để tìm kiếm: "
            hang = gets.chomp
            puts "Kết quả tìm kiếm: "
            quanliptgt.searchHang(hang,phuongtiens)
        when "b"
            puts "Nhập Màu xe để tìm kiếm: "
            mau = gets.chomp
            puts "Kết quả tìm kiếm: "
            quanliptgt.searchMau(mau,phuongtiens)
        when "c"
            puts "Nhập Biển số để tìm kiếm: "
            bien = gets.chomp
            puts "Kết quả tìm kiếm: "
            quanliptgt.searchBienso(bien,phuongtiens)
        end
        
    when 5
        break
    end
end