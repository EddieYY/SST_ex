package routers

import (
	"SST/controllers/admin"
	"SST_ex/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/login", &admin.LoginUserController{})
	beego.Router("/index", &admin.AdminController{})

}
