<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="account edit-account">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="row">
		<div class="col-md-2">
			<div class="account-picture-block text-center">
				<!-- IF picture -->
				<img id="user-current-picture" class="user-profile-picture" src="{picture}" />
				<!-- ELSE -->
				<div class="user-icon user-profile-picture" style="background-color: {icon:bgColor};">{icon:text}</div>
				<!-- ENDIF picture -->
				<br /><br />
				
				<li class="dropdown">
					<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">
						<span>Options</span>
						<span class="caret"></span>
					</button>

					<ul class="dropdown-menu dropdown-menu-right">
						<li><a id="changePictureBtn" href="#">[[user:change_picture]]</a></li>
						<!-- IF !username:disableEdit -->
						<li><a href="{config.relative_path}/user/{userslug}/edit/username">[[user:change_username]]</a></li>
						<!-- ENDIF !username:disableEdit -->
						<!-- IF !email:disableEdit -->
						<li><a href="{config.relative_path}/user/{userslug}/edit/email">[[user:change_email]]</a></li>
						<!-- ENDIF !email:disableEdit -->
						<li><a href="{config.relative_path}/user/{userslug}/edit/password">[[user:change_password]]</a></li>
					</ul>
				</li>

				<br />
				
				<!-- IF config.requireEmailConfirmation -->
				<!-- IF email -->
				<!-- IF isSelf -->
				<a id="confirm-email" href="#" class="btn btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm_email]]</a>
				<!-- ENDIF isSelf -->
				<!-- ENDIF email -->
				<!-- ENDIF config.requireEmailConfirmation -->

				<!-- IF allowAccountDelete -->
				<!-- IF isSelf -->
				<a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete_account]]</a><br/><br/>
				<!-- ENDIF isSelf -->
				<!-- ENDIF allowAccountDelete -->
			</div>
		</div>

		<div class="col-md-10">
			<div class="card">
				<form class="form-horizontal" role="form">
				<div class="card-body card-padding">

					<div class="form-group">
						<div class="fg-line">
							<label>[[user:fullname]]</label>
							<input class="form-control" type="text" id="inputFullname" placeholder="[[user:fullname]]" value="{fullname}">
						</div>
					</div>

					<div class="form-group">
						<div class="fg-line">
							<label>[[user:website]]</label>
							<input class="form-control" type="text" id="inputWebsite" placeholder="http://..." value="{website}">
						</div>
					</div>

					<div class="form-group">
						<div class="fg-line">
							<label>[[user:location]]</label>
							<input class="form-control" type="text" id="inputLocation" placeholder="[[user:location]]" value="{location}">
						</div>
					</div>

					<div class="form-group">
						<div class="fg-line">
							<label>[[user:birthday]]</label>
							<input class="form-control" id="inputBirthday" value="{birthday}" placeholder="yyyy-mm-dd">
						</div>
					</div>

					<div class="form-group">
						<div class="fg-line">
							<label>[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
							<textarea class="form-control" id="inputAboutMe" rows="5">{aboutme}</textarea>
						</div>
					</div>

					<!-- IF !disableSignatures -->
					<div class="form-group">
						<div class="fg-line">
							<label>[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
							<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
						</div>
					</div>
					<!-- ENDIF !disableSignatures -->

					<input type="hidden" id="inputUID" value="{uid}"><br />

					<div class="form-actions">
						<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
					</div>
				</div>
				</form>
			</div>

			<hr class="visible-xs visible-sm"/>
		</div>

	</div>
</div>