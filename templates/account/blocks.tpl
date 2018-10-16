<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="users row">
		<div class="col-sm-8 col-xs-12">
			<div class="card">
				<div class="card-header">
					<h4>[[pages:account/blocks, {username}]]</h4>
				</div>
				<div class="card-body card-padding">
					<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
						<!-- IMPORT partials/users_list.tpl -->
					</ul>
					<div class="alert alert-warning text-center"<!-- IF users.length --> style="display: none;"<!-- END -->>[[user:has_no_blocks]]</div>
					<!-- IMPORT partials/paginator.tpl -->
				</div>
			</div>
		</div>
		<div class="col-sm-4 col-xs-12">
			<div class="card">
				<div class="card-body card-padding form">
					<div class="form-group">
						<div class="fg-line">
							<label for="user-search">[[users:search]]</label>
							<input class="form-control" type="text" id="user-search" placeholder="[[users:enter_username]]" />
						</div>
					</div>
					<div class="block-edit">
						<!-- IF edit -->
						<!-- BEGIN edit -->
						<table class="table">
						<tr>
							<td>
								<a href="{config.relative_path}/uid/{../uid}">
									<!-- IF ../picture -->
									<img class="user-picture" component="user/picture" src="{../picture}" itemprop="image" />
									<!-- ELSE -->
									<div class="user-icon user-picture" component="user/picture" style="background-color: {../icon:bgColor};">{../icon:text}</div><!-- END -->{../username}
								</a>
							</td>
							<td>
								<button class="btn btn-sm btn-primary pull-right" data-uid="{../uid}" data-action="toggle">[[user:block_toggle]]</button>
							</td>
						</tr>
						</table>
						<!-- END -->
						<!-- END -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>