<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="account change-username">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12">
			<div class="card" id="change-username">
				<form class="form-horizontal edit-form">
					<div class="control-group">
						<label class="control-label" for="inputNewUsername">[[user:username]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputNewUsername" placeholder="[[user:username]]" value="{username}">
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
						<a id="submitBtn" href="#" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_username]]</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>