require_relative "Phuongtien"
class Xemay < Phuongtien
    attr_accessor :congsuat, :dungtichxang

    def initialize(id,hangsx,namsx,dongxe,giaban,bienso,mauxe,congsuat,dungtichxang)
        super(id,hangsx,namsx,dongxe,giaban,bienso,mauxe)
        @congsuat =congsuat
        @dungtichxang = dungtichxang
    end

    def show() 
        puts"------xemay-----------"
        puts ("Mã Phương tiện: #{@id}, Hãng sản suất: #{@hangsx}, Năm sản xuất: #{@namsx},Dòng xe: #{@dongxe},Giá bán: #{@giaban}, Biển số: #{@bienso}, Màu xe: #{mauxe} \nCông suất: #{@congsuat}, Dung tích bình xăng: #{@dungtichxang}")
    end
end