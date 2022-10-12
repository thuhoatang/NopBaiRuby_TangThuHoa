require_relative "Oto"
require_relative "Xemay"
require_relative "Xetai"
class Quanliptgt
    def initialize
    end

    def add(phuongtiens,phuongtien)
        phuongtiens.push(phuongtien)
    end


    def show(phuongtiens)
        for phuongtien in phuongtiens do
            phuongtien.show
        end
    end
    def delete(id, phuongtiens)
        for phuongtien in phuongtiens do
            if(phuongtien.id == id)
                phuongtiens.delete(phuongtien)
                puts("Xóa Thành công")
            end
        end
    end
 

    def searchHang(hangsx, phuongtiens)
        for phuongtien in phuongtiens do
            if(phuongtien.hangsx == hangsx)
                phuongtien.show
            end
        end
    end
    def searchMau(mauxe, phuongtiens)
        for phuongtien in phuongtiens do
            if(phuongtien.mauxe == mauxe)
                phuongtien.show
            end
        end
    end
    def searchBienso(bienso, phuongtiens)
        for phuongtien in phuongtiens do
            if(phuongtien.bienso == bienso)
                phuongtien.show
            end
        end
    end
end 