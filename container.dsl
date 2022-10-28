workspace {

    model {
        user = person "User" "sinh viên gửi xe"
        softwareSystem = softwareSystem "Software System" {
            webapp = container "Web Application" "Cung cấp nội dung hệ thống và các ứng dụng của hệ thống" {
                user -> this "Truy cập đến hệ thống bằng HTTPS"
            }
             singlepage = container "single-page application" "cung cấp tất cả các ứng dụng của hệ thống, thông tin ghi nhận của xe gửi tại bãi đổ xe" {
                webapp -> this "cung cấp trình duyệt"
                user -> this "xem các ứng dụng của hệ thống và quản lí thông tin gửi xe "
            }
              application = container "API application" "cung cấp hệ thống quản lý giữ xe thông qua JSON/HTTPS" {
                singlepage -> this "gọi API đến JSONS/HTTPS"
            }
             database = container "Database" "lưu trữ thông tin của xe ra vào bãi" {
                application -> this "đọc và ghi dữ liệu vào DB"
            }
           
        }
    }

    views {
      
 container softwareSystem {
            include *
            autolayout lr
            
        }

        theme default
    }

}