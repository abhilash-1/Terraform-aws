variable instances {
    type = list 
    default = ["MongoDb", "Mysql", "Redis"]

}

variable common_tags{
    type = map 
    default = {
        Project="Roboshop"
        Environment="dev"
        Type="Shopping_web"
    }
}

variable environment{
    type=string
    default="dev"
}