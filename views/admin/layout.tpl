<!DOCTYPE html>
<html lang="zh-TW">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{.title}}</title>
    <meta name="keywords" content="{{.title}}">
    <meta name="description" content="{{.title}}">
    <!-- Bootstrap -->
    <link href="/static/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/font-awesome/font-awesome.min.css" rel="stylesheet">
    <link href="/static/css/base.css" rel="stylesheet">
    <link href="/static/css/app_theme.css" rel="stylesheet">
    <link href="/static/css/ijobs.css" rel="stylesheet">
    <link href="/static/css/custom.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="/static/js/html5shiv.min.js"></script>
      <script src="/static/js/respond.min.js"></script>
    <![endif]-->
  </head>
  <body style="background-color:#fafafa;position:relative;">
    <!-- 封面 -->
    <div id="cover" style="z-index:3000;position: fixed;top:0;left:0;height:100%;width:100%;text-align: center;display: none;">
      <div style="width:100%;height:100%;background: #000;opacity: 0.5;"></div>
      <img src="./img/cover.png" style="position: fixed;top:60px;left:50%;width:900px;height:600px;margin-left:-450px;"/>
      <a class="king-btn king-btn-icon king-round king-default" title="关闭" style="position: fixed;top:80px;left:50%;margin-left:400px;" id="coverClose">
               <i class="fa fa-close btn-icon"></i>
          </a>
    </div>
    <!-- 封面 end -->
    <header class="king-main-header" style="z-index:2995;">
      <div style="width:230px;" class="pull-left">
        <a class="logo" href="/index">
         <!-- <img alt="" src="./img/ijobs.png">-->
          <span class="logo-lg">{{.title}}</span>
        </a>
        <a class="navbar-minimalize  pull-right" href="#" style="font-size:22px;min-width:20px;padding:12px 0;height:44px;"></a>
      </div>
      <nav class="navbar">
        <div class="king-business-select pull-left dropdown ml20">
            <span>版本別: 測試版1.0 </span>
            <!--<span><input name="author" value="程序开发：Duliang"  readonly="true" style="height: 34px;width: 248px;border: none;border: 1px solid #4A9BFF;padding: 0 10px" /></span>-->
        </div>
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <li>
               <a href="javascript:void(0);" class="">
               <span>login:{{.loginuser}}</span>
               </a>
            </li> 
            <li class="dropdown">
              <a aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" class="dropdown-toggle" href="#" id="drop4">Help
                <span class="caret"></span>
              </a>
              <ul aria-labelledby="drop4" class="dropdown-menu" id="menu1">
                <li><a href="https://github.com/duliang123/SST" id="menu1-instruction">使用介绍</a></li>
                <li><a href="/loginout" id="menu1-logout">logout</a></li>
              </ul>
            </li>  
          </ul>
        </div>
      </nav>
    </header>

    <div class="king-layout6-main">
    <!-- 左边 start -->
      <div class="king-layout6-sidebar" style=" background:#293038">
        <section class="king-sidebar" style="height: auto;">
          <ul class="king-sidebar-menu">
            <li class="treeview ">
              <a href="#">
                <i class="fa fa-calendar-o"></i>
                <span>Dashboard</span>
                <span class="fa fa-angle-right pull-right"></span>
              </a>
              <ul class="treeview-menu" style="background: #1C2026;">
                <li><a href="/index"><i class="fa"></i>MR Dashboard</a></li>
                <!--<li><a href="/ssh/add"><i class="fa"></i>添加主机</a></li> -->
                <li><a href="/ssh/index"><i class="fa"></i>供應商交期追蹤</a></li>
              </ul>
            </li>
            <li class="treeview ">
              <a href="#">
                <i class="fa fa-calendar-o"></i>
                <span>KPI</span>
                <span class="fa fa-angle-right pull-right"></span>
              </a>
              <ul class="treeview-menu" style="background: #1C2026;">
                <li><a href="#"><i class="fa"></i>MR Fulfillment Rate(待處理)</a></li>
                <li><a href="#"><i class="fa"></i>未滿足 MR</a></li> 
                <li><a href="#"><i class="fa"></i>綜合指標</a></li>
                <li><a href="#"><i class="fa"></i>綜合指標2</a></li>
                <li><a href="#"><i class="fa"></i>提早開立 MR</a></li>
              </ul>
            </li>
<!--   <li class="treeview">
              <a href="#">
                <i class="fa fa-list-alt"></i>
                <span>DB监控</span>
                <span class="fa fa-angle-right pull-right"></span>
              </a>
              <ul class="treeview-menu" style="background: #1C2026;">
                <li><a href="/mysql/"><i class="fa"></i>参数设置</a></li>
                <li><a href="/mysql/"><i class="fa"></i>MySQL实例管理</a></li>
                <li><a href="/mysql/"><i class="fa"></i>Redis实例管理</a></li>
                <li><a href="/mysql/"><i class="fa"></i>监控MySQL实例</a></li> 
                <li><a href="/mysql/"><i class="fa"></i>--| 健康监控</a></li>
                <li><a href="/mysql/"><i class="fa"></i>--| 资源监控</a></li> 
              </ul>
            </li>

            <li class="treeview">
              <a href="#">
                <i class="fa fa-calendar-o"></i>
                <span>内部管理</span>
                <span class="fa fa-angle-right pull-right"></span>
              </a>
              <ul class="treeview-menu" style="background: #1C2026;">
                <li><a href="/redis/"><i class="fa"></i>域名PING</a></li>
                
              </ul>
            </li>-->
<!--
            <li class="treeview">
              <a href="#">
                <i class="fa fa-briefcase"></i>
                <span>工单管理</span>
                <span class="fa fa-angle-right pull-right"></span>
              </a>
              <ul class="treeview-menu" style="background: #1C2026;">
                <li><a href="/index"><i class="fa"></i>新建工单</a></li>
                <li><a href="/index"><i class="fa"></i>工单列表</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-list-alt"></i>
                <span>CMDB资源</span>
                <span class="fa fa-angle-right pull-right"></span>
              </a>
              <ul class="treeview-menu" style="background: #1C2026;">
                <li><a href="/index"><i class="fa"></i>物理服务器</a></li>
                <li><a href="/index"><i class="fa"></i>云服务器</a></li>
                <li><a href="/index"><i class="fa"></i>VPS</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-list-alt"></i>
                <span>配置中心</span>
                <span class="fa fa-angle-right pull-right"></span>
              </a>
              <ul class="treeview-menu" style="background: #1C2026;">
                <li><a href="/index"><i class="fa"></i>脚本管理</a></li>
                <li><a href="/index"><i class="fa"></i>接口服务</a></li>
              </ul>
            </li>
-->
          </ul>
        </section>
      </div>
      <!-- 左边 end -->
      <!-- 右边 start -->
      <div class="king-layout6-content">
         <section style="padding:0 15px">
            <ol class="breadcrumb" style="margin-bottom:0;border-bottom:1px solid #eee;background:none;border-radius:0;padding-left:5px;">
              <li id='breadcrumb-2'><i class="fa fa-dashboard"></i> <a href="/index">首页</a></li>
              <li id='breadcrumb-3'>{{.navtitle}}</li>
            </ol>
          </section>
          <section class="king-content" id="king-content1">
            <div class="panel panel-default ijobs-innerbox" style="padding:20px;min-height:300px;">{{.LayoutContent}}</div>
          </section>
      </div>
      <!-- 右边 end -->

    </div>
    <section class="section-copyright">&copy; 2017 LWM</section>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/static/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/jquery.validate.js"></script>
    <script src="/static/js/app.js"></script>
    <script src="/static/js/common.js"></script>
    <script src="/static/js/custom.js"></script>
  </body>
</html>
