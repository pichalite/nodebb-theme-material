<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<!-- IF sessions.length -->
	<div class="card">
    <div class="card-header ch-alt">
	    [[global:sessions]]
	  </div>
    <div class="card-body card-padding">
      <p>[[user:sessions.description]]</p>
      <ul class="list-group" component="user/sessions">
        <!-- BEGIN sessions -->
        <li class="list-group-item" data-uuid="{../uuid}">
          <div class="pull-right">
						<!-- IF isSelfOrAdminOrGlobalModerator -->
						<!-- IF !../current -->
						<button class="btn btn-xs btn-default" type="button" data-action="revokeSession">Revoke Session</button>
						<!-- ENDIF !../current -->
						<!-- ENDIF isSelfOrAdminOrGlobalModerator -->
						{function.userAgentIcons}
						<i class="fa fa-circle text-<!-- IF ../current -->success<!-- ELSE -->muted<!-- ENDIF ../current -->"></i>
					</div>
					{../browser} {../version} on {../platform}<br />
					<small class="timeago text-muted" title="{../datetimeISO}"></small>
					<ul>
						<li><strong>[[global:ip_address]]</strong>: {../ip}</li>
					</ul>
        </li>
        <!-- END sessions -->
      </ul>
    </div>
	</div>
	<!-- ENDIF sessions.length -->
</div> 
