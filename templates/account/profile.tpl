<!-- IMPORT partials/account_menu.tpl -->
<div class="account profile-view">
	<div class="row">
		<div class="col-md-5 account-block">
			<div class="card profile-view">
                <div class="pv-header">
                    <img src="{picture}" class="pv-main" alt="">
                </div>               
                <div class="pv-body">
                    <span><i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i> <span class="account-username"> {username}</span></span>
                
                    <div class="pv-contact">
                        <!-- IF !isSelf -->
						<br/>
						<!-- IF !config.disableChat -->
						<a id="chat-btn" href="#" class="btn btn-primary btn-sm">[[user:chat]]</a>
						<!-- ENDIF !config.disableChat -->
							<a id="follow-btn" href="#" class="btn btn-success btn-sm <!-- IF isFollowing -->hide<!-- ENDIF isFollowing -->">[[user:follow]]</a>
							<a id="unfollow-btn" href="#" class="btn btn-warning btn-sm <!-- IF !isFollowing -->hide<!-- ENDIF !isFollowing -->">[[user:unfollow]]</a>
							<!-- IF isAdmin -->
							<br/><br/>

							<a id="banAccountBtn" href="#" class="btn btn-danger btn-sm <!-- IF banned -->hide<!-- ENDIF banned -->">[[user:ban_account]]</a>
							<a id="unbanAccountBtn" href="#" class="btn btn-danger btn-sm <!-- IF !banned -->hide<!-- ENDIF !banned -->">[[user:unban_account]]</a>
							<a id="deleteAccountBtn" href="#" class="btn btn-danger btn-sm">[[user:delete_account]]</a><br/><br/>
							<!-- ENDIF isAdmin -->
						<!-- ENDIF !isSelf -->

						<div id="banLabel" class="text-center <!-- IF !banned -->hide<!-- ENDIF !banned -->">
							<span class="label label-danger">[[user:banned]]</span>
						</div>
						
						<!-- IF aboutme -->
						<hr/>
						<div component="aboutme" class="text-center">
						{aboutme}
						</div>
						<!-- ENDIF aboutme -->
                    </div>
                    
                    <ul class="pv-follow">
                        <li>
                        	<span style="display:block;">{reputation}</span>
                        	<span>[[global:reputation]]</span>
                        </li>
                        <li>
                        	<span style="display:block;">{postcount}</span>
                        	<span>[[global:posts]]</span>
                        </li>
                        <li>
                        	<span style="display:block;">{profileviews}</span>
                        	<span>[[user:profile_views]]</span>
                        </li>
                    </ul>

                    <ul class="pv-follow">
                    	<li>
                    		<span class="human-readable-number account-bio-value" title="{followerCount}" style="display:block;">{followerCount}</span>
							<span class="account-bio-label">[[user:followers]]</span>
						</li>
						<li>
							<span class="human-readable-number account-bio-value"  title="{followingCount}" style="display:block;">{followingCount}</span>
							<span class="account-bio-label">[[user:following]]</span>
						</li> 
                    </ul>
                           
                </div>
            </div>

			<div class="card">
				<div class="card-body card-padding">

					<!-- IF email -->
					<div class="profile-label">[[user:email]]</div>
					<div><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</div>
					<!-- ENDIF email -->

					<!-- IF fullname -->
					<div class="profile-label">[[user:fullname]]</div>
					<div>{fullname}</div>
					<!-- ENDIF fullname -->

					<!-- IF websiteName -->
					<div class="profile-label">[[user:website]]</div>
					<div><a href="{websiteLink}">{websiteName}</a></div>
					<!-- ENDIF websiteName -->

					<!-- IF location -->
					<div class="profile-label">[[user:location]]</div>
					<div>{location}</div>
					<!-- ENDIF location -->

					<!-- IF age -->
					<div class="profile-label">[[user:age]]</div>
					<div>{age}</div>
					<!-- ENDIF age -->

					<div class="profile-label">[[user:joined]]</div>
					<div class="timeago account-bio-value" title="{joindate}"></div>

					<div class="profile-label">[[user:lastonline]]</div>
					<div class="timeago account-bio-value" title="{lastonline}"></div>

					<!-- IF !disableSignatures -->
					<!-- IF signature -->
					<hr/>
					<div class="profile-label">[[user:signature]]</div>
					<div class="post-signature">
						<span id='signature'>{signature}</span>
					</div>
					<!-- ENDIF signature -->
					<!-- ENDIF !disableSignatures -->
				</div>
			</div>

			<!-- IF groups.length -->
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-group"></i> [[groups:groups]]
				</div>
				<div class="card-body card-padding">
				<!-- BEGIN groups -->
					<a href="{config.relative_path}/groups/{groups.slug}"><span class="label group-label inline-block" style="background-color: {groups.labelColor};"><!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}</span></a>
				<!-- END groups -->
				</div>
			</div>
			<!-- ENDIF groups.length -->

			<!-- IF ips.length -->
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-laptop"></i> [[global:recentips]]
				</div>
				<div class="card-body card-padding">
				<!-- BEGIN ips -->
					<div>{ips.ip}</div>
				<!-- END ips -->
				</div>
			</div>
			<!-- ENDIF ips.length -->
		</div>

		<div class="col-md-7 user-recent-posts">
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-edit"></i> [[global:recentposts]]
				</div>
				<!-- IF !posts.length -->
				<div class="alert alert-warning">[[user:has_no_posts]]</div>
				<!-- ENDIF !posts.length -->
				<!-- IMPORT partials/posts_list.tpl -->
			</div>

		</div>
	</div>

	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</div>