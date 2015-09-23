<!-- IMPORT partials/account_menu.tpl -->
<div class="account edit-account">
	<div class="row">
		<div class="col-md-2">
			<div class="account-picture-block text-center">
				<img id="user-current-picture" class="user-profile-picture" src="{picture}" /><br /><br />
				<a id="changePictureBtn" href="#" class="btn btn-primary">[[user:change_picture]]</a>
				<br/><br/>
				<!-- IF config.allowAccountDelete -->
				<!-- IF isSelf -->
				<a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete_account]]</a><br/><br/>
				<!-- ENDIF isSelf -->
				<!-- ENDIF config.allowAccountDelete -->
				<!-- IF config.requireEmailConfirmation -->
				<!-- IF email -->
				<!-- IF isSelf -->
				<a id="confirm-email" href="#" class="btn btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm_email]]</a>
				<!-- ENDIF isSelf -->
				<!-- ENDIF email -->
				<!-- ENDIF config.requireEmailConfirmation -->
			</div>
		</div>

		<div class="col-md-5">
			<div class="card">
				<form class="form-horizontal" role="form">
				<div class="card-body card-padding">
					<!-- IF !username:disableEdit -->
					<div class="form-group">
	                    <div class="fg-line">
	                    	<label>[[user:username]]</label>
	                        <input class="form-control" type="text" id="inputUsername" placeholder="[[user:username]]" value="{username}">
	                    </div>
	                </div>
	                <!-- ENDIF !username:disableEdit -->

	                <div class="form-group">
	                    <div class="fg-line">
	                    	<label>[[user:email]]</label>
	                        <input class="form-control" type="text" id="inputEmail" placeholder="[[user:email]]" value="{email}">
	                    </div>
	                </div>

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

		<div class="col-md-5">
			<div class="card">
				<form class='form-horizontal'>
				<div class="card-body card-padding">	
					<!-- IF isSelf -->
					<div class="input-group">
						<div class="fg-line">
							<label>[[user:current_password]]</label>
							<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword-->>
						</div>
						<span class="input-group-addon last">
							<span></i></span>
						</span>
					</div>
					<!-- ENDIF isSelf -->

					<div class="input-group">
						<div class="fg-line">
							<label>[[user:password]]</label>
							<input class="form-control" type="password" id="inputNewPassword" placeholder="[[user:password]]" value="">
						</div>
						<span class="input-group-addon last">
							<span id="password-notify"><span class="success hide"><i class="fa fa-check"></i></span><span class="error hide"></span><span class="default"><i class="fa fa-circle-o"></i></span></span>
						</span>
					</div>

					<div class="input-group">
						<div class="fg-line">
							<label>[[user:confirm_password]]</label>
							<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="[[user:confirm_password]]" value="">
						</div>
						<span class="input-group-addon">
							<span id="password-confirm-notify"><span class="success hide"><i class="fa fa-check"></i></span><span class="error hide"></span><span class="default"><i class="fa fa-circle-o"></i></span></span>
						</span>
					</div>
					<div class="form-actions">
						<a id="changePasswordBtn" href="#" class="btn btn-primary"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_password]]</a>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>

	<!-- IMPORT partials/modals/change_picture_modal.tpl -->
	<!-- IMPORT partials/modals/upload_picture_from_url_modal.tpl -->
</div>