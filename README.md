# PIC32MM0XXXGPM064 MICROCONTROLLER DEVELOPMENT KIT
![](https://github.com/sampidevkit/PIC32DevKit/blob/master/HW/Product/Picture/PIC32DevKit.png?raw=true)
<br/>Đây là thiết kế mở - một kit phát triển vi điều khiển 32-bit họ PIC32MM. Kit được trang bị các tính năng như sau:<br/>
* PCB và các ngõ vào ra theo định dạng của Arduino Uno.
* Mạch nạp tích hợp theo kiểu USB lưu trữ, tệp hex sẽ được kéo - thả để nạp trực tiếp mà không cần sử dụng phần mềm nạp cũng như các mạch nạp bên ngoài như PICKit, ICD, ..., tuy nhiên người dùng vẫn có thể sử dụng được các mạch nạp chuyên dụng kết nối với cổng ICSP được thiết kế sẵn.
* Cổng chuyển đổi USB - UART, người dùng không cần sử dụng thêm thiết bị chuyển đổi bên ngoài như CP2102, FT232, ...
* Khe cắm thẻ nhớ. Giao tiếp SPI với MCU chính.
* Bộ chuyển đổi logic để giao tiếp với RGB chip LED (APA102, WS2812, SK9822, ...) <br/>
## 1. Sơ Đồ Khối
![](https://github.com/sampidevkit/PIC32FDevKit/blob/master/HW/Product/Schematic/PIC32DevKit_001.png?raw=true)

## 2. Sơ Đồ Nguyên Lý
![](https://github.com/sampidevkit/PIC32FDevKit/blob/master/HW/Product/Schematic/PIC32DevKit_002.png?raw=true)
<br/>
![](https://github.com/sampidevkit/PIC32FDevKit/blob/master/HW/Product/Schematic/PIC32DevKit_003.png?raw=true)
<br/>
![](https://github.com/sampidevkit/PIC32FDevKit/blob/master/HW/Product/Schematic/PIC32DevKit_004.png?raw=true)

## 3. Vi Điều Khiển Chính PIC32MM0XXXGPM064
Họ vi điều khiển PIC32MM là họ vi điều khiển 32-bit sử dụng core MIPS microAptiv.<br/>
* Dao động nội 8MHz, 32kHz, PLL 96MHz. Tốc độ tối đa 37 DMIPS/25MHz.
* Bộ nhớ chương trình từ 64kByte đến 256kByte, RAM 16byte-32byte.
* Chip được trang bị 3x UART, 3x SPI, 3x I2C, 1x USB OTG.
* PWM chuyên dụng để điều khiển động cơ, 3x timer 16bit hoặc 1x timer 16bit + 1 timer 32bit.
* ADC 10/12 bit, 3x compare.
* Tích hợp module thời gian thực RTCC.
* Ngõ vào ra của các module chức năng có thể cấu hình nhờ chức năng Peripheral Pin Select (PPS).
* Năng lượng thấp, phù hợp cho các ứng dụng sử dụng pin.<br/>
* [Thông tin thêm xem tại đây](https://www.microchip.com/en-us/product/PIC32MM0256GPM064).

## 4. Môi Trường Lập Trình, Trình Biên Dịch và Công Cụ Hỗ Trợ

### 4.1. Môi Trường Lập Trình MPLAB X IDE
![](https://microchipdeveloper.com/local--files/mplabx:lesson1-7/mplabx-start-page.PNG)
Môi trường lập trình MPLAB X IDE sử dụng mã nguồn của Netbeans, giao diện thân thiện và dễ sử dụng. Tải về và hướng dẫn cài đặt tại đây: [Installing MPLAB® X IDE](https://microchipdeveloper.com/mplabx:installation). </br>
Khuyến cáo: Sử dụng Windows 64bit với RAM tối thiểu 4GB và ổ cứng trống từ 20GB.

### 4.2. Trình Biên Dịch MPLAB XC32
Nếu sử dụng ngôn ngữ lập trình C để lập trình cho Kit, bạn cần tải về trình biên dịch XC8. Nó sẽ chuyển mã C thành mã assembly. </br>
![](https://microchipdeveloper.com/local--files/mplabx:lesson1-4/CompilerWork2.png)
</br>Sau đó, nó sẽ chuyển mã assembly sang mã máy dưới dạng file HEX. Bạn cũng có thể sử dụng XC8 để biên dịch cho mã nguồn được viết trực tiếp bằng assembly. 
![](https://microchipdeveloper.com/local--files/mplabx:lesson1-4/HEXFile.png)
</br>Trình biên dịch có thể sử dụng miễn phí, không giới hạn code size, chỉ giới hạn các cấp độ tối ưu mã nguồn. Chức năng tối ưu mã nguồn sử dụng trong sản xuất, không cần thiết trong học tập. Tải về và hướng dẫn cài đặt tại đây: [Installing MPLAB® XC8 Compiler](https://microchipdeveloper.com/xc32:installation).

### 4.3. Công Cụ Cấu Hình và Tạo Code Mẫu MPLAB Code Configurator (MCC)
MCC là một plugin của MPLAB X IDE, hỗ trợ tạo cấu hình chip, cấu hình các ngoại vi và các API để người dùng sử dụng mà không mất nhiều thời gian xây dựng chúng. </br>
![](https://microchipdeveloper.com/local--files/mplabx:mcc/mccscreen.png)
</br>Tải về và hướng dẫn cài đặt tại đây: [Install MPLAB® Code Configurator (MCC)](https://microchipdeveloper.com/install:mcc).

## 5. Mạch Nạp Tích Hợp

### 5.1. Nạp Chương Trình Mạch Nạp
Chương trình mạch nạp chỉ cần nạp 1 lần. Các công cụ cần chuẩn bị: </br>
* Mạch nạp chuyên dụng như PICkit3, PICkit4, Snap, ICD3, ICD4, ...
* Header đực 2x4x1.27 dùng cho cổng nạp ICSP theo sơ đồ sau: </br>
* Đang cập nhật ...

### 5.2. Cập Nhật Chương Trình Mạch Nạp
Để cập nhật chương trình mới cho chip nạp, bạn có thể thực hiện như mục 5.1 hoặc thực hiện như sau: </br>
* Kết nối kit với máy tính bằng cáp micro USB.
* Nhấn giữ nút RESET đến khi các đèn STT, RLED, BLED cùng sáng (khoảng 5s).
* Vào My Computer/ This PC sẽ thấy xuất hiện ổ đĩa BOOTLOADER.
* Đang cập nhật ...

### 5.3 Các Trạng Thái LED Lỗi
* Lỗi khi ghi file hex vào ổ đĩa của kit: File nạp không đúng định dạng hoặc sự cố kết nối USB.
* Đang cập nhật ...

## 6. Hướng Dẫn Lập Trình Cơ Bản
Đang cập nhật ...

## 7. Tài Liệu Kỹ Thuật:
Đang cập nhật ...