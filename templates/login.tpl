<style type="text/css">
    #header {
        box-shadow: none;
    }
</style>

<div class="login">
    <form class="form-horizontal" role="form" method="post" target="login" id="login-form">
        <div class="login-block">
            <div class="alert alert-danger" id="login-error-notify" <!-- IF error -->style="display:block"<!-- ELSE -->style="display: none;"<!-- ENDIF error -->>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                [[login:failed_login_attempt]]
                <p>{error}</p>
            </div>
            <div class="input-group fg-float">
                <span class="input-group-addon"><i class="fa fa-fw fa-user"></i></span>
                <div class="fg-line">
                    <input class="form-control" type="text" name="username" id="username" autocorrect="off" autocapitalize="off" value="{username}" <!-- IF username -->readonly<!-- ENDIF username -->/>
                </div>
                <label class="fg-label">{allowLoginWith}</label>
            </div>
            
            <div class="input-group fg-float">
                <span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
                <div class="fg-line">
                    <input class="form-control" type="password" name="password" id="password" />
                </div>
                <label class="fg-label">[[user:password]]</label>
            </div>
            
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="remember" id="remember" checked>
                    <i class="input-helper"></i>
                    [[login:remember_me]]
                </label>
            </div>
            
            <button class="btn btn-primary btn-lg btn-block" id="login" type="submit">[[global:login]]</button>

            <div class="login-options">
                <!-- IF allowRegistration -->
                <span>[[login:dont_have_account]] <a href="{config.relative_path}/register">[[register:register]]</a></span>
                <!-- ENDIF allowRegistration -->
                &nbsp; <a id="reset-link" href="{config.relative_path}/reset">[[login:forgot_password]]</a>
            </div>
            
        </div>
    </form>
    <!-- IF alternate_logins -->
    <div class="login-options">
        <ul class="alternate-auth">
        <!-- BEGIN authentication -->
        <li class="{authentication.name}"><a rel="nofollow" target="_top" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-2x"></i></a></li>
        <!-- END authentication -->
        </ul>
    </div>
    <!-- ENDIF alternate_logins -->
</div>