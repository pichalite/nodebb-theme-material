<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="account profile-view">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="row">
		<div class="col-md-4">
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
					<div class="timeago account-bio-value" title="{joindateISO}"></div>

					<div class="profile-label">[[user:lastonline]]</div>
					<div class="timeago account-bio-value" title="{lastonlineISO}"></div>

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

			<!-- IF aboutme -->
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-info"></i> [[user:aboutme]]
				</div>
				<div class="card-body card-padding">
					<div component="aboutme" class="text-center">
					{aboutme}
					</div>
				</div>
			</div>
			<!-- ENDIF aboutme -->

		</div>
		<div class="col-md-8 user-recent-posts">
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