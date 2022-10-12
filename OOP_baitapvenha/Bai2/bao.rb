require_relative "tailieu"
class Bao < Tailieu
    attr_accessor :ngayPH_124

    def initialize(maTL_124, tenNXB_124, soBPH_124, ngayPH_124)
        super(maTL_124, tenNXB_124, soBPH_124)
        @ngayPH_124 = ngayPH_124
    end

    def showInfor() 
        puts ("Mã tài liệu: #{@maTL_124}, Tên Nhà Xuất bản: #{@tenNXB_124}, Số bản phát hành: #{@soBPH_124},ngày phát hành: #{@ngayPH_124}")
    end
end