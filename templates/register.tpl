<div class="register">
    <div class="register-block">
        <div class="alert alert-danger<!-- IF !error --> hidden<!-- ENDIF !error -->" id="register-error-notify">
            [[error:registration-error]]
            <p>{error}</p>
        </div>
        <form class="form-horizontal" role="form" action="{config.relative_path}/register" method="post">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-fw fa-envelope"></i></span>
            <div class="fg-line">
                <input class="form-control" type="email" name="email" id="email" placeholder="[[register:email_address_placeholder]]" autocorrect="off" autocapitalize="off" />
            </div>
            <span class="input-group-addon">
                <span id="email-notify"><i class="fa fa-circle-o"></i></span>
            </span>
        </div>

        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-fw fa-user"></i></span>
            <div class="fg-line">
                <input class="form-control" type="text" name="username" id="username" placeholder="[[register:username_placeholder]]" autocorrect="off" autocapitalize="off" autocomplete="off" />
            </div>
            <span class="input-group-addon">
                <span id="username-notify"><i class="fa fa-circle-o"></i></span>
            </span>
        </div>
        
        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
            <div class="fg-line">
                <input class="form-control" type="password" name="password" id="password" placeholder="[[register:password_placeholder]]" />
            </div>
            <span class="input-group-addon">
                <span id="password-notify"><i class="fa fa-circle-o"></i></span>
            </span>
        </div>
        
        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
            <div class="fg-line">
                <input class="form-control" type="password" name="password-confirm" id="password-confirm" placeholder="[[register:confirm_password_placeholder]]" />
            </div>
            <span class="input-group-addon">
                <span id="password-confirm-notify"><i class="fa fa-circle-o"></i></span>
            </span>
        </div>
        
        <!-- BEGIN regFormEntry -->
        <div class="input-group">
            <div id="register-{regFormEntry.styleName}">
                {{regFormEntry.html}}
            </div>
        </div>
        <!-- END regFormEntry -->

        <button class="btn btn-primary btn-lg btn-block" id="register" type="submit">[[register:register_now_button]]</button>
        <input id="referrer" type="hidden" name="referrer" value="" />
        <input id="token" type="hidden" name="token" value="" />
        </form>
    </div>

    <!-- IF alternate_logins -->
    <div class="register-options">
        <ul class="alternate-auth">
        <!-- BEGIN authentication -->
        <li class="{authentication.name}"><a rel="nofollow" target="_top" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-2x"></i></a></li>
        <!-- END authentication -->
        </ul>
    </div>
    <!-- ENDIF alternate_logins -->
</div>
