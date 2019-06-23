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
						<!-- IF allowProfilePicture -->
						<li><a id="changePictureBtn" href="#">[[user:change_picture]]</a></li>
						<!-- ENDIF allowProfilePicture -->
						<!-- IF !username:disableEdit -->
						<li><a href="{config.relative_path}/user/{userslug}/edit/username">[[user:change_username]]</a></li>
						<!-- ENDIF !username:disableEdit -->
						<!-- IF !email:disableEdit -->
						<li><a href="{config.relative_path}/user/{userslug}/edit/email">[[user:change_email]]</a></li>
						<!-- ENDIF !email:disableEdit -->
						<!-- IF canChangePassword -->
						<li><a href="{config.relative_path}/user/{userslug}/edit/password">[[user:change_password]]</a></li>
						<!-- ENDIF canChangePassword -->
						<!-- BEGIN editButtons -->
 						<li><a href="{config.relative_path}{editButtons.link}">{editButtons.text}</a></li>
 						<!-- END editButtons -->
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
								<input class="form-control" type="text" id="inputFullname" value="{fullname}">
							</div>
						</div>

						<!-- IF allowWebsite -->
						<div class="form-group">
							<div class="fg-line">
								<label>[[user:website]]</label>
								<input class="form-control" type="text" id="inputWebsite" value="{website}">
							</div>
						</div>
						<!-- ENDIF allowWebsite -->

						<div class="form-group">
							<div class="fg-line">
								<label>[[user:location]]</label>
								<input class="form-control" type="text" id="inputLocation" value="{location}">
							</div>
						</div>

						<div class="form-group">
							<div class="fg-line">
								<label>[[user:birthday]]</label>
								<input class="form-control" id="inputBirthday" value="{birthday}" placeholder="yyyy-mm-dd">
							</div>
						</div>

						<div class="form-group fg-line">
			        <div class="select">
				        <label for="grouptitle">[[user:grouptitle]]</label>
								<select class="form-control" id="groupTitle" data-property="groupTitle" <!-- IF allowMultipleBadges --> multiple<!-- ENDIF allowMutlipleBadges -->>
									<option value="">[[user:no-group-title]]</option>
									<!-- BEGIN groups -->
									<!-- IF groups.userTitleEnabled -->
									<option value="{groups.name}" <!-- IF groups.selected -->selected<!-- ENDIF groups.selected -->>{groups.userTitle}</option>
									<!-- ENDIF groups.userTitleEnabled -->
									<!-- END groups -->
								</select>
							</div>
						</div>

						<!-- IF allowAboutMe -->
						<div class="form-group">
							<div class="fg-line">
								<label>[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
								<textarea class="form-control" id="inputAboutMe" rows="5">{aboutme}</textarea>
							</div>
						</div>
						<!-- ENDIF allowAboutMe -->

						<!-- IF allowSignature -->
						<!-- IF !disableSignatures -->
						<div class="form-group">
							<div class="fg-line">
								<label>[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
								<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
							</div>
						</div>
						<!-- ENDIF !disableSignatures -->
						<!-- ENDIF allowSignature -->

						<input type="hidden" id="inputUID" value="{uid}"><br />

						<div class="form-actions">
							<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
						</div>
					</div>
				</form>
			</div>

			<!-- IF sso.length -->
			<div class="card">
				<div class="card-header">[[user:sso.title]]</div>
				<div class="card-body card-padding">
					<!-- BEGIN sso -->
					<div class="list-group-item">
						<!-- IF ../deauthUrl -->
						<a class="btn btn-default btn-xs pull-right" href="{../deauthUrl}">[[user:sso.dissociate]]</a>
						<!-- END -->
						<a href="{../url}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
							<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
							<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
							{../name}
						</a>
					</div>
					<!-- END sso -->
				</div>
			</div>
			<!-- ENDIF sso.length -->
		</div>

	</div>
</div>