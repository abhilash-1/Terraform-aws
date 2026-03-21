variable tags{
    type = map
    default = {
        Project = "Roboshop"
        environment = "dev"
    }
}

variable instances {
    type = list
    default = ["Catalogue","Mongodb","Payment"]
}

variable environment {
    type = string
    default = "dev"
}