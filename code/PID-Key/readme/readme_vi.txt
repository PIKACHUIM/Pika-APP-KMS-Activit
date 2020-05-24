
                            PIDKey Portable từ Ratiborus,
                                     MSFree Inc.

       		                       Mô tả:
                          —————————————————————————————————
Chương trình được thiết kế để bạn có thể xem, cập nhật, kiểm tra và lưu lại thông tin về Key các sản phẩm của M$.
Trong nhiều trường hợp, nó là giải pháp thay thế rất tốt cho VAMT.

       		                 Hướng dẫn sử dụng:
                          —————————————————————————————————
Chạy PIDKey.exe, chọn cấu hình của key trong DS có sẵn, chèn key vào, sau đó nhấn "Chạy!". 
Bạn cũng có thể kiểm tra nhiều key bằng cách copy chúng và dán vào chương trình, sau đó 
nhấn "Chạy!". Công cụ sẽ kiểm tra key với tất cả các cấu hình, cho đến khi xác định được 
thông tin của key. Bạn có thể sử dụng cấu hình có sẵn, hoặc thêm cấu hình tùy chỉnh của bạn. 
Nếu bạn có một cấu hình trong PC, bạn có thể chỉ định đường dẫn của nó để chương trình nhận 
và bắt đầu làm việc. Nếu bạn đã thêm cấu hình tùy chỉnh và muốn loại bỏ nó. Hãy yên tâm, 
chương trình có một nút nhỏ để bạn có thể xóa nó dễ dàng. Bạn cũng có thể kiểm tra key từ một 
tập tin bên ngoài, bất cứ tệp nào có định dạng văn bản, có chứa cả key lẫn giữa các ký tự hay 
văn bản khác, chương trình vẫn có thể xác định dễ dàng.
Trong thư mục chương trình đã có sẵn tập tin Activation_Restore.cmd để giúp bạn khôi phục lại 
k.hoạt dễ dàng. Bạn có thể tự khôi phục lại kích hoạt kể cả khi không có PIDKey.

                          —————————————————————————————————
                                                                Ratiborus


Thay đổi:
v2.1.2 build 1015 
 -Fixed minor bugs.

v2.1.2 build 1014 
 -Small interface changes.

v2.1.2 build 1013 
 -Optimized some functions to accelerate the program.
 -Small interface changes.

v2.1.2 build 1010
 -Small changes to the interface.

v2.1.1 build 1006
-Key Groups beginning with "Server Cloud12" need to recheck, from the table. They will
 be transferred to the group "Server Cloud 2012" 
-Key Groups beginning with "Server Cloud2016" need to recheck, from the table. They will
 be transferred to the group "Server Cloud 2016"
-Key Groups "Not Found" need to recheck.

v2.1.1 build 1005
 -Small changes to the interface.
 -Changes in function prediction configuration.
 -Fixed minor bugs.

v2.1.1 build 1000
 -The program window has become smaller, 780x550. Changed font and button layout.
 -Key Groups beginning with "Server 12" need to recheck, from the table. They will
  be transferred to the group "Server 2012"
 -When checking the keys works prediction function, increasing the speed of work.
 -The program works on Windows XP, only the x86 version.
 -Added configuration to determine Windows 10 b14352 keys, definition  works only
  on Windows 7-10, on XP not working. New DLL pidgenx.dll does not support Windows XP.

v2.1.0 build 1001
 -Small changes to the interface.

v2.1.0 build 1000
-Small changes to the interface, added compatibility with Windоws 10 build 14352.

v2.0.9 build 1008
 -Optimized some functions to speed up the program.

v2.0.9 build 1006
 -Changes in the "Service Keys Database" function.

v2.0.9 build 1005
 -Optimized some functions to speed up the program.

v2.0.9 build 1004
 -When the key is being identified the program displays a parameter called "Total keys"
  "Total keys" - is the number of keys related to a sub-type (e.g. X18-32647, X20-32655, 
  [TH] X20-17626...) which can be released just by M$.

v2.0.9 build 1003
 -On Windows 10 OSPP is not properly determined, Office 15 keys are
  not set.

v2.0.9 build 1002
 -Optimized some functions to speed up the program.
 -The whole configuration is stored in INI file.
 -Now you can create any number of configurations (number of files pconfig.xrm-ms) in this 
  version, the list will grow dynamically as you add new configurations. You can make a list
  of any size.
 -When the program is run, the keys database is unpacked in folder C:\Windows\Temp
 -You can run multiple instances/copies of the program, but be careful if you are running a copy
  from the same folder, the latest running instance/copy of the program overwrites keys when 
  closing it!!!

PS: In the 1001 test assembly key database is stored in the program folder, and if the length 
  of the path to the database exceeded 259 characters, then the entire database is not displayed,
  the keys are lost. In build 1002 the keys database is unpacked again, in C:\Windows\Temp.



v2.0.9 build 1000 
 -Optimized some functions to accelerate the program. 
 -Small interface changes.

v2.0.8 build 1002
 -Thêm tính năng "Loại bỏ tất cả các key bị chặn" (Alt + Nút xóa). 

v2.0.8 build 1001
 -Sửa lỗi Windоws 10 Technical Preview xác định không đúng OSPP, sửa lỗi key Office 14
  không thể cài đặt.

v2.0.8 build 1000
 -Công cụ hỗ trợ đa ngôn ngữ. Thêm tính năng chuyển đổi ngôn ngữ trong giao diện công cụ.
 -Khi bạn kiểm tra tình trạng giấy phép sản phẩm, nó sẽ hiển thị LicenseStatusReason.
  Nếu không nó sẽ báo lỗi (Mã lỗi: 0x4004F040).

v2.0.7 build 2120
 -Tối ưu hóa khả năng phân tích key đầu vào từ Clipboard.
 -Hiển thị chi tiết thông tin về KMS-Service khi bạn nhập key CSVLK hoặc cài đặt máy chủ KMS cho Office 14/15

v2.0.7 build 2119
 -Sửa lỗi không hiện thị thông tin bản quyền trên Windows 7.

v2.0.7 build 2117
 -Sửa lỗi khi thay đổi ProductKeyChannel. Sản phẩm không thể kích hoạt.
 -Sửa lỗi phát sinh khi lưu Key.
 -Tăng tốc độ khởi động chương trình.

v2.0.7 build 2116
 -Sửa các lỗi nhỏ.

v2.0.7 build 2114
 -Thêm giao diện cài đặt Key và kích hoạt.
 -Hoàn thiện chức năng cài đặt Key và kích hoạt.
 -Cải thiện chức năng phân loại Key.
 -Thêm tính năng sao lưu và khôi phục kích hoạt.
  Hãy cẩn thận, bản sao lưu chưa chắc giúp bạn kích hoạt lại hệ thống dễ dàng.
 -Thêm nút "Kích hoạt bằng điện thoại".
 -Thêm nút "Thông tin kích hoạt".

v2.0.7 build 2000 Final (Tôi đã làm tất cả mọi thứ mình muốn theo đúng kế hoạch ;))
 -Sửa các lỗi nhỏ.
 -Khi bạn thêm key, một thông báo sẽ xuất hiện nếu có Key nào đó bị chặn.
 -Hiển thị số lượng của từng nhóm Key trong ListView.
 -Thêm vào Menu ngữ cảnh dòng: "Di chuyển Key vào danh sách bị chặn".
 -Khôi phục lại Key đã lưu từ bất cứ thư mục nào.
 -Thêm khả năng xóa Key đã chọn.

v2.0.6.1
 -Sửa lỗi khi sao chép key dán vào tệp văn bản.

v2.0.6
 -Thêm tùy chọn ẩn các key đã chọn (CSVLK, GVLK, OEM, RETAIL, MAK).
 -Thêm tính năng lưu lại key bị chặn trong file văn bản (.txt).
 -Trong Settings.ini, thêm tham số "SaveBasePermanently = False/True.
False - Key sẽ được lưu trong dữ liệu khi bạn thoát khỏi chương trình.
True - Key sẽ được lưu trong dữ liệu ngay khi bạn thêm vào chương trình.

v2.0.5
 -Lỗi xác định số lượt kích hoạt của key khi không kết nối mạng đã được sửa.
 -Thêm khả năng sao lưu và khôi phục Key.
 -Sửa một số lỗi nhỏ.

v2.0.4
 -Sửa một số lỗi.
 -Thêm nút Hoàn tác và Làm lại.
 -Thêm chức năng bảo vệ Key bằng mật khẩu.
 -Thêm chỉ dẫn khi bạn di chuyển chuột trên Key.
 -Dữ liệu key được lưu trong một tập tin được bảo vệ bằng mật khẩu. Không sử dụng thư mục chứa nữa.
 -Khi bạn thêm key từ các tệp *.key và *.cilx, ghi chú của key trong tệp cũng tự động nạp vào dữ liệu.
 -Sửa một số lỗi trong việc phân loại Key.

v2.0.3
 -Thay đổi chức năng tìm kiếm Key của chương trình.
 -Khi nhập tập tin .cilx, tất cả các ghi chú (Remarks) đều được giữ nguyên.
 -Thêm tính năng sắp xếp Key.
 -Sửa rất nhiều lỗi. Nhưng chắc chắn vẫn còn nhiều lỗi phát sinh.

v2.0.2
 -Thay đổi nhỏ về giao diện. PID Checker được tích hợp vào cơ sở dữ liệu.

v2.0.1
 -Làm mới lại giao diện chương trình.

v1.0.5.1
 -Tăng tốc độ làm việc của chương trình.
 -Thay đổi nhỏ trong giao diện.

v1.0.4
 -Thêm khả năng xem và chỉnh sửa Key file.

v1.0.3
 -Bạn có thể copy và dán nhiều key cùng lúc để bắt đầu kiểm tra. 
 -Tự động loại bỏ dấu cách và các ký tự văn bản không liên quan.
 -Thêm chức năng sắp xếp key khi xuất ra tệp.
 -Thêm ghi chú vào key.
 -Tìm kiếm key bằng cách nhập một phần nào đó hoặc ghi chú của key.

v1.0.1
 -Thay đổi giao diện.
 -Thêm cơ sở dữ liệu về key bị chặn.

v1.0.0
 -Phát hành lần đầu. 