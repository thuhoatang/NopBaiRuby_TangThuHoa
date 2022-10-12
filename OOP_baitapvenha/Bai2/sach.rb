require_relative "tailieu"
class Sach < Tailieu
    attr_accessor :tenTG_124,:soTrang_124
    def initialize(maTL_124, tenNXB_124, soBPH_124, tenTG_124, soTrang_124)
        super(maTL_124, tenNXB_124, soBPH_124)
        @tenTG_124 = tenTG_124
        @soTrang_124 = soTrang_124
    end
    
    def showInfor
        puts ("Mã tài liệu: #{@maTL_124}, Tên Nhà Xuất bản: #{@tenNXB_124}, Số bản phát hành: #{@soBPH_124}, Tên tác giả: #{@tenTG_124}, Số Trang: #{@soTrang_124}")
    end
end
