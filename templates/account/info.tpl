<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account account-info">
	<!-- IMPORT partials/account/header.tpl -->

	<!-- IF sessions.length -->
	<div class="row">
		<div class="col-xs-12">
			<div class="card">
	        	<div class="card-header ch-alt">
	        		[[global:sessions]]
	        	</div>
	        	<div class="card-body card-padding">
	        		<ul class="list-group" component="user/sessions">
						<!-- BEGIN sessions -->
						<li class="list-group-item" data-uuid="{../uuid}">
							<div class="pull-right">
								<!-- IF !../current -->
								<button class="btn btn-xs btn-danger" type="button" data-action="revokeSession">Revoke Session</button>
								<!-- ENDIF !../current -->
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
		</div>
	</div>
	<!-- ENDIF sessions.length -->
	
	<div class="row">
		<div class="col-sm-6">
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-laptop"></i> [[global:recentips]]
				</div>
				<div class="card-body card-padding">
					<ul>
						<!-- BEGIN ips -->
						<li>@value</li>
						<!-- END ips -->
					</ul>
				</div>
			</div>
			
			<div class="card">
				<div class="card-header ch-alt">
					[[user:info.username-history]]
				</div>
				<div class="card-body card-padding">
					<ul class="list-group">
						<!-- BEGIN usernames -->
						<li class="list-group-item">
							{../value}
							<small class="pull-right"><span class="timeago" title="{../timestampISO}"></span></small>
						</li>
						<!-- END usernames -->
					</ul>
				</div>
			</div>
			
			<div class="card">
				<div class="card-header ch-alt">
					[[user:info.email-history]]
				</div>
				<div class="card-body card-padding">
					<ul class="list-group">
						<!-- BEGIN emails -->
						<li class="list-group-item">
							{../value}
							<small class="pull-right"><span class="timeago" title="{../timestampISO}"></span></small>
						</li>
						<!-- END emails -->
					</ul>
				</div>
			</div>
			
		</div>
		<div class="col-sm-6">
			<div class="card">
				<div class="card-header ch-alt">
					[[user:info.latest-flags]]
				</div>
				<div class="card-body card-padding">
					<!-- IF history.flags.length -->
					<ul class="recent-flags">
						<!-- BEGIN history.flags -->
						<li>
							<p>
								<a class="title" href="{config.relative_path}/post/{../pid}">{../title}</a><br />
								<span class="timestamp">Flagged <span class="timeago" title="{../timestampISO}"></span> ({../timestampReadable})</span>
							</p>
						</li>
						<!-- END history.flags -->
					</ul>
					<!-- ELSE -->
					<div class="alert alert-info">[[user:info.no-flags]]</div>
					<!-- ENDIF history.flags.length -->
				</div>
			</div>

			<div class="card">
				<div class="card-header ch-alt">
					[[user:info.ban-history]]
				</div>
				<div class="card-body card-padding">
					<!-- IF history.bans.length -->
					<ul class="ban-history">
						<!-- BEGIN history.bans -->
						<li>
							<p>
								<span class="timestamp timeago" title="{../timestampISO}"></span> &mdash; {../timestampReadable}<br />
								<!-- IF ../until -->
								<span class="expiry">[[user:info.banned-until, {../untilReadable}]]</span><br />
								<!-- ELSE -->
								<span class="expiry">[[user:info.banned-permanently]]</span><br />
								<!-- ENDIF ../until -->
								<span class="reason"><strong>[[user:info.banned-reason-label]]</strong>: {../reason}</span>
							</p>
						</li>
						<!-- END history.bans -->
					</ul>
					<!-- ELSE -->
					<div class="alert alert-info">[[user:info.no-ban-history]]</div>
					<!-- ENDIF history.bans.length -->
				</div>
			</div>
			
			<!-- IF isAdminOrGlobalModerator -->
			<div class="card">
				<div class="card-header ch-alt">
					[[user:info.moderation-note]]
				</div>
				<div class="card-body card-padding">
					<textarea component="account/moderation-note" class="form-control">{moderationNote}</textarea>
					<br/>
					<button class="btn btn-sm btn-success" component="account/save-moderation-note">[[global:save]]</button>
				</div>
			</div>
			<!-- ENDIF isAdminOrGlobalModerator -->
		</div>
	</div>
</div>