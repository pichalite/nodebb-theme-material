<div class="categories row">
	<!-- BEGIN categories -->
	<div class="category-item col-md-4 col-sm-6 col-xs-12">
		<div class="card">
			<meta itemprop="name" content="{categories.name}">
			<div class="card-header ch-alt">
                <h2>
                	<!-- IF categories.link -->
					<a href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a href="{config.relative_path}/category/{categories.slug}" itemprop="url" style="color:{categories.bgColor};">
					<!-- ENDIF categories.link-->
					{categories.name} <!-- IF categories.icon -->
							<i class="fa {categories.icon} fa-fw"></i>
							<!-- ENDIF categories.icon --></a>
					<small style="color:{categories.bgColor};">{categories.description}</small>
				</h2>
				<ul class="actions">
                    <li>
                        <i class="fa fa-book"></i><span class="human-readable-number" title="{categories.totalTopicCount}"></span>
                    </li>
                    <li>
                        <i class="fa fa-pencil"></i><span class="human-readable-number" title="{categories.totalPostCount}"></span>
                    </li>
                </ul>
            </div>

            <div class="card-body card-padding">
				<!-- BEGIN posts -->				
				<div component="category/posts" class="content">
					<div class="pull-left hidden-xs">
				    	<a href="{config.relative_path}/user/{categories.posts.user.userslug}">
				        	<img class="user-picture" src="{categories.posts.user.picture}" title="{categories.posts.user.username}">
				    	</a>
					</div>
					<div class="topic-content">
						<a href="{config.relative_path}/topic/{categories.posts.topic.slug}">{categories.posts.topic.title}</a>
					</div>
				</div>
				<!-- END posts -->
			</div>
		</div>
	</div>
	<!-- END categories -->
</div>