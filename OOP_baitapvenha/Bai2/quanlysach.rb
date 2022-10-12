require_relative "tapchi"
require_relative "sach"
require_relative "bao"
class ManagerDocument
    def initialize

    end

    def addDocument(documents_124, document_124)
        documents_124.push(document_124)
    end

    def deleteDocument(maTL_124, documents_124)
        for document_124 in documents_124 do
            if(document_124.maTL_124 == maTL_124)
                documents_124.delete(document_124)
                puts("Xóa Thành công")
            end
        end
    end

    def showInfor(documents_124)
        for document_124 in documents_124 do
            document_124.showInfor
        end
    end

    def searchByBook(documents_124)
        for document_124 in documents_124 do
            if document_124.instance_of? Sach
                document_124.showInfor
            end
        end
    end

    def searchByJournal(documents_124)
        for document_124 in documents_124 do
            if document_124.instance_of? Tapchi
                document_124.showInfor
            end
        end
    end

    def searchByNewspaper(documents_124)
        for document_124 in documents_124 do
            if document_124.instance_of? Bao
                document_124.showInfor
            end
        end
    end
end