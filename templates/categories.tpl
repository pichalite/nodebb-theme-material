<div class="categories row <!-- IF !config.removeCategoriesAnimation --> display-animation<!-- ENDIF !config.removeCategoriesAnimation -->">
	<!-- BEGIN categories -->
	<div class="<!-- IF categories.class -->{categories.class}<!-- ELSE -->col-md-3 col-sm-6 col-xs-12<!-- ENDIF categories.class -->">
		<div class="new-card" style="{function.generateCategoryBackground}">
			<a href="<!-- IF categories.link -->{categories.link}<!-- ELSE -->{config.relative_path}/category/{categories.slug}<!-- ENDIF categories.link-->" itemprop="url" <!-- IF categories.link -->target="_blank"<!-- ENDIF categories.link-->>
				<div class="new-card-body">
					<ul class="category-counts pull-right">
	                    <li>
	                        <i class="fa fa-book"></i><span class="human-readable-number" title="{categories.totalTopicCount}"></span>
	                    </li>
	                    <li>
	                        <i class="fa fa-pencil"></i><span class="human-readable-number" title="{categories.totalPostCount}"></span>
	                    </li>
	                </ul>
					<h4>
						{categories.name} <!-- IF categories.icon -->
								<i class="fa {categories.icon} fa-fw"></i>
								<!-- ENDIF categories.icon -->
					</h4>
					<small>{categories.description}</small>
				</div>
			</a>
			<div class="new-card-footer">
				<!-- BEGIN posts -->				
				<div component="category/posts">
					<div class="pull-left hidden-xs user-avatar">
				    	<a href="{config.relative_path}/user/{categories.posts.user.userslug}">
				        	<img class="user-picture" src="{categories.posts.user.picture}" title="{categories.posts.user.username}">
				    	</a>
					</div>
					<div class="topic-title">
						<a href="{config.relative_path}/topic/{categories.posts.topic.slug}">{categories.posts.topic.title}</a>
					</div>
				</div>
				<!-- END posts -->
			</div>
		</div>
	</div>
	<!-- END categories -->
</div>