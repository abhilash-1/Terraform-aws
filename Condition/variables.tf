var tags{
    type = map
    default = {
        Project = "Roboshop"
        environment = "dev"
    }
}

var instances {
    type = list
    default = ["Catalogue","Mongodb","Payment"]
}