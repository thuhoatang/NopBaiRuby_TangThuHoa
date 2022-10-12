require_relative "tailieu"
class Tapchi < Tailieu
    attr_accessor :soPH_124,:thangPH_124

    def initialize(maTL_124, tenNXB_124, soBPH_124, soPH_124, thangPH_124)
        super(maTL_124, tenNXB_124, soBPH_124)
        @soPH_124 = soPH_124
        @thangPH_124 = thangPH_124
    end

    def showInfor() 
        puts ("Mã tài liệu: #{@maTL_124}, Tên Nhà Xuất bản: #{@tenNXB_124}, Số bản phát hành: #{@soBPH_124}, số phát hành: #{@soPH_124}, Tháng phát hành: #{@thangPH_124}")
    end
end