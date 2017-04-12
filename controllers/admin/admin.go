package admin

import (
	"SST/controllers"
	. "SST_ex/models/admin"
	"fmt"
	"github.com/astaxie/beego"
	"time"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Website"] = "github.com/duliang123/SST"
	c.Data["Email"] = ""
	c.Layout = "admin/layout.tpl"
	c.TplName = "index.tpl"
}

//登录
type LoginUserController struct {
	controllers.BaseController
}

func (this *LoginUserController) Get() {
	check := this.BaseController.IsLogin
	if check {
		//this.Abort("401")
		this.Redirect("/index", 302)
	} else {
		this.Data["title"] = beego.AppConfig.String("title")
		this.Data["login_title"] = beego.AppConfig.String("login_title")
		this.Data["culture"] = beego.AppConfig.String("culture")
		this.TplName = "admin/login.tpl"
	}
}

/*func (this *LoginUserController) Post() {
	username := this.GetString("username")
	password := this.GetString("password")

	if "" == username {
		this.Data["json"] = map[string]interface{}{"code": 0, "message": "請輸入NT"}
		this.ServeJSON()
	}

	if "" == password {
		this.Data["json"] = map[string]interface{}{"code": 0, "message": "请填入密碼"}
		this.ServeJSON()
	}
	err, users := LoginUser(username, password)

	if err == nil {
		this.SetSession("userLogin", fmt.Sprintf("%d", users.Id)+"||"+users.Username+"||"+users.Avatar)
		//this.SetSession("userPermission", GetPermissions(users.Id))
		this.Data["json"] = map[string]interface{}{"code": 1, "message": "登入成功！！"}
	} else {
		this.Data["json"] = map[string]interface{}{"code": 0, "message": "登入失敗，請重新登入！！"}
	}
	this.ServeJSON()
}
*/

//退出

/*
type LogoutUserController struct {
    controllers.BaseController
}

func (this *LogoutUserController) Get() {
    this.DelSession("userLogin")
    //this.Ctx.WriteString("you have logout")
    this.Redirect("/login", 302)

}
*/
//首页
type AdminController struct {
	controllers.BaseController
}

func (this *AdminController) Get() {
	this.Data["title"] = beego.AppConfig.String("title")
	this.Data["culture"] = beego.AppConfig.String("culture")
	this.Data["navtitle"] = "TSMC"
	this.Data["loginuser"] = this.GetSession("userLogin")
	this.Data["datetime"] = time.Now().Format("2006-01-02 15:04:05")
	this.Layout = "admin/layout.tpl"
	this.TplName = "admin/index.tpl"
}
