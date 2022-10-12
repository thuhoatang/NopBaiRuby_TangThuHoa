require_relative "Phuongtien"
class Oto < Phuongtien
    attr_accessor :sochongoi, :kieudongco,:nhienlieu,:sotuikhi,:ngaydangkiem

    def initialize(id,hangsx,namsx,dongxe,giaban,bienso,mauxe,sochongoi,kieudongco,nhienlieu,sotuikhi,ngaydangkiem)
        super(id,hangsx,namsx,dongxe,giaban,bienso,mauxe)
        @sochongoi =sochongoi
        @kieudongco = kieudongco
        @nhienlieu = nhienlieu
        @sotuikhi = sotuikhi
        @ngaydangkiem = ngaydangkiem
    end

    def show() 
        puts"------OtO-----------"
        puts ("Mã Phương tiện: #{@id}, Hãng sản suất: #{@hangsx}, Năm sản xuất: #{@namsx},Dòng xe: #{@dongxe},Giá bán: #{@giaban}, Biển số: #{@bienso}, Màu xe: #{mauxe} \nSố chỗ ngồi: #{@sochongoi}, Kiểu động cơ: #{@kieudongco}, Nhiên liệu: #{@nhienlieu}, Số túi khí: #{@sotuikhi}, Ngày đăng kiểm: #{@ngaydangkiem}")
    end
end