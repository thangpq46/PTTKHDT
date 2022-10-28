workspace {

    model {
        user = person "Sinh Viên" "Một sinh viên gửi xe"
        softwareSystem = softwareSystem "hệ thống quản lý giữ xe" "quản lý giữ xe cho sinh viên"
        user  -> softwareSystem "gửi xe"
        softwareSystem2 = softwareSystem "hệ thống lưu thông tin" "quản lý dữ liệu xe được gửi"
        softwareSystem -> softwareSystem2 " hệ thống ghi nhận dữ liệu xe được gửi"
        softwareSystem3 = softwareSystem "Bảo vệ" "kiểm tra thẻ xe và thu tiền"
        softwareSystem -> softwareSystem3 "thanh toán"
        softwareSystem4 = softwareSystem "Thông báo" "Thông báo cho sinh viên biết có còn chỗ trống để gửi xe hay không"
        softwareSystem -> softwareSystem4 " Gửi Thông báo"
        softwareSystem4 -> user "Thông báo đến sinh viên"
    }


    views {
        systemContext softwareSystem "softwaresytems" {
            include *
            autoLayout
        }

        styles {
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Person" {
                shape person
                background #08427b
                color #ffffff
            }
        }
    }
    
}