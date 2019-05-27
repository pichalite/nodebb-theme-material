<div class="register">
	<div class="register-block">
		<div class="alert alert-danger<!-- IF !error --> hidden<!-- ENDIF !error -->" id="register-error-notify">
			[[error:registration-error]]
			<p>{error}</p>
		</div>
		<form class="form-horizontal" action="{config.relative_path}/register" method="post">
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-fw fa-envelope"></i></span>
					<div class="fg-line">
						<input class="form-control" type="email" name="email" id="email"
							placeholder="[[register:email_address_placeholder]]" autocorrect="off" autocapitalize="off" />
					</div>
				</div>
				<span class="register-feedback" id="email-notify"></span>
			</div>

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-fw fa-user"></i></span>
					<div class="fg-line">
						<input class="form-control" type="text" name="username" id="username"
							placeholder="[[register:username_placeholder]]" autocorrect="off" autocapitalize="off"
							autocomplete="off" />
					</div>
				</div>
				<span class="register-feedback" id="username-notify"></span>
			</div>

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
					<div class="fg-line">
						<input class="form-control" type="password" name="password" id="password"
							placeholder="[[register:password_placeholder]]" />
					</div>
				</div>
				<span class="register-feedback" id="password-notify"></span>
			</div>

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
					<div class="fg-line">
						<input class="form-control" type="password" name="password-confirm" id="password-confirm"
							placeholder="[[register:confirm_password_placeholder]]" />
					</div>
				</div>
				<span class="register-feedback" id="password-confirm-notify"></span>
			</div>

			<!-- BEGIN regFormEntry -->
			<div class="form-group">
				<div id="register-{regFormEntry.styleName}">
					{{regFormEntry.html}}
				</div>
			</div>
			<!-- END regFormEntry -->

			<button class="btn btn-primary btn-lg btn-block" id="register"
				type="submit">[[register:register_now_button]]</button>
			<input id="referrer" type="hidden" name="referrer" value="" />
			<input id="token" type="hidden" name="token" value="" />
		</form>
	</div>

	<!-- IF alternate_logins -->
	<div class="register-options">
		<ul class="alternate-auth">
			<!-- BEGIN authentication -->
			<li class="{authentication.name}"><a rel="nofollow noopener noreferrer" target="_top"
					href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-2x"></i></a></li>
			<!-- END authentication -->
		</ul>
	</div>
	<!-- ENDIF alternate_logins -->
</div>