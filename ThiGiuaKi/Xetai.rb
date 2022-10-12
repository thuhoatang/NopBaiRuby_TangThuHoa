require_relative "Phuongtien"
class Xetai < Phuongtien
    attr_accessor :trongtai

    def initialize(id,hangsx,namsx,dongxe,giaban,bienso,mauxe,trongtai)
        super(id,hangsx,namsx,dongxe,giaban,bienso,mauxe)
        @trongtai =trongtai

    end

    def show() 
        puts"------xetai-----------"
        puts ("Mã Phương tiện: #{@id}, Hãng sản suất: #{@hangsx}, Năm sản xuất: #{@namsx},Dòng xe: #{@dongxe},Giá bán: #{@giaban}, Biển số: #{@bienso}, Màu xe: #{mauxe} \nTrọng tải: #{@trongtai}")
    end
end