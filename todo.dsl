workspace {
    model {
        bankuser = person "Banking User" "User have account banking"
        bankSystem = softwaresystem "ATM System" "ATM software"

        bankuser -> bankSystem "Users"
    }
    views {
        systemContext bankSystem "BankSystem" {
            include *
            autoLayout
        }
        styles {
            element "Software System" {
                background #01A545
                color #ffffff
        }
        element "Person" {
            shape "Person" 
                background #800C78
                color #ffffff
        }
    }
}