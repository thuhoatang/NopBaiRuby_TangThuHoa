require_relative 'student.rb'

arr = [Student.new(10,5,8,"Hoa","Đen",150,70,18,"0123456789","hoa@1234","Kinh"),
  Student.new(10,10,10,"Minh Hieu","frmale",170,70,21,"0123456789","dai@1234","Kinh"),
  Student.new(10,5,7,"Van Anh","male",159,40,18,"0123456789","anh@1234","Kinh"),
  Student.new(10,9,8,"Thi Thoa","male",155,45,18,"0123456789","thoa@1234","Kinh"),
]

puts "Danh sách chưa sắp xếp : \n",arr,"\n"


arr_sorted = arr.sort_by { |item| -item.average_grade() }
puts "Danh sách đã sắp xếp : \n",arr_sorted