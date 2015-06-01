<div component="groups/container" class="groups details row">
	<div class="col-lg-6 col-xs-12">
		<div class="card">
			<div class="card-header ch-alt">
				<i class="fa fa-list-ul"></i> [[groups:details.title]]
				<!-- IF group.private --><span class="label label-info">[[groups:details.private]]</span><!-- ENDIF group.private -->
				<!-- IF group.hidden --><span class="label label-info">[[groups:details.hidden]]</span>&nbsp;<!-- ENDIF group.hidden -->
			</div>
			<div class="card-body card-padding group-details">
				<div><h2>{group.name}</h2></div>
				<div><p>{group.descriptionParsed}</p></div>
				<!-- IF loggedIn -->
				<div class="pull-right">
					{function.membershipBtn, group}
				</div>
				<!-- ENDIF loggedIn -->
			</div>
		</div>
		<div class="card">
			<div class="card-header ch-alt">
				<i class="fa fa-users"></i> [[groups:details.members]]
			</div>
			<div class="card-body card-padding">
				<table component="groups/members" class="table table-striped table-hover members">
					<!-- BEGIN members -->
					<tr data-uid="{group.members.uid}">
						<td>
							<a href="{config.relative_path}/user/{group.members.userslug}"><img src="{group.members.picture}" /></a>
						</td>
						<td class="member-name">
							<a href="{config.relative_path}/user/{group.members.userslug}">{group.members.username}</a> <i title="[[groups:owner]]" class="fa fa-star text-warning <!-- IF !group.members.isOwner -->invisible<!-- ENDIF !group.members.isOwner -->"></i>
						</td>
						<!-- IF group.isOwner -->
						<td>
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									More <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="#" data-ajaxify="false" data-action="toggleOwnership">
											[[groups:details.grant]]
										</a>
									</li>
									<li>
										<a href="#" data-ajaxify="false" data-action="kick">
											[[groups:details.kick]]
										</a>
									</li>
								</ul>
							</div>
						</td>
						<!-- ENDIF group.isOwner -->
					</tr>
					<!-- END members -->
				</table>
			</div>
		</div>
		<!-- IF group.isOwner -->
		<div class="card">
			<div class="card-header ch-alt">
				<i class="fa fa-clock-o"></i> [[groups:details.pending]]
			</div>
			<div class="card-body card-padding">
				<table component="groups/members" class="table table-striped table-hover pending">
					<!-- BEGIN pending -->
					<tr data-uid="{group.pending.uid}">
						<td>
							<a href="{config.relative_path}/user/{group.pending.userslug}"><img src="{group.pending.picture}" /></a>
						</td>
						<td class="member-name">
							<a href="{config.relative_path}/user/{group.pending.userslug}">{group.pending.username}</a>
						</td>
						<td>
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									More <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#" data-ajaxify="false" data-action="accept">[[groups:pending.accept]]</a></li>
									<li><a href="#" data-ajaxify="false" data-action="reject">[[groups:pending.reject]]</a></li>
								</ul>
							</div>
						</td>
					</tr>
					<!-- END pending -->
				</table>
			</div>
		</div>
		<!-- ENDIF group.isOwner -->
		<div widget-area="left"></div>
	</div>
	<div class="col-lg-6 col-xs-12">
		<!-- IF group.isOwner -->
		<div class="card">
			<div class="card-header ch-alt pointer" data-toggle="collapse" data-target=".options">
					<i class="fa fa-caret-down pull-right"></i>
					<i class="fa fa-cogs"></i> [[groups:details.owner_options]]			
			</div>

			<div class="card-body card-padding options collapse">
				<form component="groups/settings" role="form">
					<div class="form-group">
						<div class="fg-line">
						<label for="name">[[groups:details.group_name]]</label>
						<input class="form-control" name="name" id="name" type="text" value="{group.name}" />
						</div>
					</div>
					<div class="form-group">
						<div class="fg-line">
						<label for="name">[[groups:details.description]]</label>
						<textarea class="form-control" name="description" id="description" type="text">{group.description}</textarea>
						</div>
					</div>
					<div class="form-group user-title-option">
						<div class="fg-line">
						<label for="userTitle">[[groups:details.badge_text]]</label>
						<input component="groups/userTitleOption" class="form-control" name="userTitle" id="userTitle" type="text" value="{group.userTitle}"<!-- IF !userTitleEnabled --> disabled<!-- ENDIF !userTitleEnabled --> />
						</div>
					</div>
					<div class="form-group user-title-option">
						<label>[[groups:details.badge_preview]]</label><br />
						<span class="label<!-- IF !userTitleEnabled --> hide<!-- ENDIF !userTitleEnabled -->" style="background-color: {group.labelColor}"><i class="fa {group.icon} icon"></i> <!-- IF group.userTitle -->{group.userTitle}<!-- ELSE -->{group.name}<!-- ENDIF group.userTitle --></span>

						<button component="groups/userTitleOption" type="button" class="btn btn-default btn-sm" data-action="icon-select"<!-- IF !userTitleEnabled --> disabled<!-- ENDIF !userTitleEnabled -->>[[groups:details.change_icon]]</button>
						<button component="groups/userTitleOption" type="button" class="btn btn-default btn-sm" data-action="color-select"<!-- IF !userTitleEnabled --> disabled<!-- ENDIF !userTitleEnabled -->>[[groups:details.change_colour]]</button>
						<input type="hidden" name="labelColor" value="<!-- IF group.labelColor -->{group.labelColor}<!-- ENDIF group.labelColor -->" />
						<input type="hidden" name="icon" value="<!-- IF group.icon -->{group.icon}<!-- ENDIF group.icon -->" />
						<div id="icons" style="display:none;">
							<div class="icon-container">
								<div class="row fa-icons">
									<i class="fa fa-doesnt-exist"></i>
									<!-- IMPORT partials/fontawesome.tpl -->
								</div>
							</div>
						</div>
					</div>
					<hr />
					<div class="checkbox">
						<label>
							<input name="userTitleEnabled" type="checkbox"<!-- IF group.userTitleEnabled --> checked<!-- ENDIF group.userTitleEnabled-->> 
							<i class="input-helper"></i>
							[[groups:details.userTitleEnabled]]
						</label>
					</div>
					<div class="checkbox">
						<label>
							<input name="private" type="checkbox"<!-- IF group.private --> checked<!-- ENDIF group.private-->> 
							<i class="input-helper"></i>
							[[groups:details.private]]
						</label>
					</div>
					<small class="help-block">[[groups:details.private_help]]</small>
					<div class="checkbox">
	                    <label>
	                        <input name="hidden" type="checkbox"<!-- IF group.hidden --> checked<!-- ENDIF group.hidden-->>
	                        <i class="input-helper"></i>
	                        [[groups:details.hidden]]
	                    </label>
	                </div>
					<small class="help-block">[[groups:details.hidden_help]]</small>

					<button class="btn btn-link btn-xs pull-right" type="button" data-action="delete">Delete Group</button>
					<button class="btn btn-primary" type="button" data-action="update">Save</button>
				</form>
			</div>
		</div>
		<!-- ENDIF group.isOwner -->
		<div class="card">
			<div class="card-header ch-alt">
				<i class="fa fa-edit"></i> [[groups:details.latest_posts]]
			</div>

			<div component="groups/activity" class="card-body card-padding">
				<!-- IF !posts.length -->
				<div class="alert alert-info">[[groups:details.has_no_posts]]</div>
				<!-- ENDIF !posts.length -->

				<!-- BEGIN posts -->
				<div class="timeline single">
					<div class="frame">
						<div class="timeline-badge">
							<i class="fa {posts.category.icon}"></i>
						</div>
						<span class="timeline-date">[[global:posted_in_ago, <a href="{config.relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]]</span>
						<div class="timeline-content">
							<p>{posts.content}</p>
						</div>
					</div>
				</div>
				<!-- END posts -->
			</div>
		</div>
		<div widget-area="right"></div>
	</div>
</div>

<!-- IMPORT partials/variables/groups/details.tpl -->