<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="account change-email">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12">
			<div class="card" id="change-email">
				<form class="form-horizontal edit-form">
					<div class="control-group">
						<label class="control-label" for="inputNewEmail">[[user:email]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputNewEmail" placeholder="[[user:email]]" value="{email}">
						</div>
					</div>

					<!-- disables autocomplete on FF --><input type="password" style="display:none">

					<!-- IF isSelf -->
					<div class="control-group">
						<label class="control-label" for="inputCurrentPassword">[[user:current_password]]</label>
						<div class="controls">
							<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword -->>
						</div>
					</div>
					<!-- ENDIF isSelf -->

					<input type="hidden" name="uid" id="inputUID" value="{uid}" />

					<br/>
					<div class="form-actions">
						<button id="submitBtn" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_email]]</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>