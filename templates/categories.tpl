<!-- IF !config.categoriesAsList -->
<div class="categories row <!-- IF !config.removeCategoriesAnimation --> display-animation<!-- ENDIF !config.removeCategoriesAnimation -->">
	<!-- BEGIN categories -->
	<div class="<!-- IF categories.class -->{categories.class}<!-- ELSE -->col-md-3 col-sm-6 col-xs-12<!-- ENDIF categories.class -->">
		<div class="category-card" style="{function.generateCategoryBackground}">
			<!-- IF categories.link -->
				<a href="{categories.link}" itemprop="url" target="_blank" >
			<!-- ELSE -->
				<a href="{config.relative_path}/category/{categories.slug}" itemprop="url" >
			<!-- ENDIF categories.link -->
				<div class="category-card-body">
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
			<div class="category-card-footer">
				<!-- BEGIN posts -->
				<div component="category/posts">
					<div class="pull-left hidden-xs user-avatar">
				    	<a href="{config.relative_path}/user/{categories.posts.user.userslug}">
				        	<!-- IF categories.posts.user.picture -->
		                    <img src="{categories.posts.user.picture}" alt="{categories.posts.user.username}" title="{categories.posts.user.username}"/>
		                    <!-- ELSE -->
		                    <div class="user-icon" title="{categories.posts.user.username}" style="background-color: {categories.posts.user.icon:bgColor};">{categories.posts.user.icon:text}</div>
		                    <!-- ENDIF categories.posts.user.picture -->
				    	</a>
					</div>
					<div class="topic-title">
						<a href="{config.relative_path}/topic/{categories.posts.topic.slug}/{categories.posts.index}">{categories.posts.topic.title}</a>
					</div>
				</div>
				<!-- END posts -->
			</div>
		</div>
	</div>
	<!-- END categories -->
</div>
<!-- ENDIF !config.categoriesAsList -->

<!-- IF config.categoriesAsList -->
<div class="categories">
	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-body">
				<!-- BEGIN categories -->
				<div class="lv-item media row clearfix">
					<div class="col-xs-12 col-sm-8 col-md-7">
						<div class="icon pull-left" style="{function.generateCategoryBackground}">
				        	<i class="fa fa-fw {categories.icon}"></i>
				    	</div>
				    	<div class="media-body">
				    		<div class="lv-title category-title">
				    			<!-- IF categories.link -->
								<a href="{categories.link}" itemprop="url" target="_blank">
								<!-- ELSE -->
								<a href="{config.relative_path}/category/{categories.slug}" itemprop="url">
								<!-- ENDIF categories.link -->
								{categories.name}
								</a><br />
								<small class="lv-small">{categories.description}</small>
				    		</div>
				    	</div>
					</div>
					<div class="col-md-1 hidden-xs hidden-sm">
						<div class="stat">
							<div class="human-readable-number" title="{categories.topic_count}">{categories.topic_count}</div>
							<span class="stat-label">[[global:topics]]</span>
						</div>
					</div>
					<div class="col-md-1 hidden-xs hidden-sm">
						<div class="stat">
							<div class="human-readable-number" title="{categories.topic_count}">{categories.post_count}</div>
							<span class="stat-label">[[global:posts]]</span>
						</div>
					</div>
					<div class="col-md-3 hidden-xs last-post">
						<!-- BEGIN posts -->
						<div component="category/posts">
							<div class="pull-left hidden-xs user-avatar">
						    	<a href="{config.relative_path}/user/{categories.posts.user.userslug}">
						        	<!-- IF categories.posts.user.picture -->
				                    <img src="{categories.posts.user.picture}" alt="{categories.posts.user.username}"/>
				                    <!-- ELSE -->
				                    <div class="user-icon" style="background-color: {categories.posts.user.icon:bgColor};">{categories.posts.user.icon:text}</div>
				                    <!-- ENDIF categories.posts.user.picture -->
						    	</a>
							</div>
							<div class="media-body">
								<div class="topic-title">
									<a href="{config.relative_path}/topic/{categories.posts.topic.slug}/{categories.posts.index}"><small class="timeago" title="{categories.posts.timestampISO}"></small></a>
									<small class="topic-content">{categories.posts.content}</small>
								</div>
							</div>
						</div>
						<!-- END posts -->
					</div>
					<!-- IF config.listSubcategories -->
						<!-- BEGIN categories.children -->
						<div class="subcategories lv-item media row">
							<div class="col-xs-12 col-sm-8 col-md-7 sub-category">
								<div class="icon pull-left" style="{function.generateCategoryBackground}">
						        	<i class="fa fa-fw {categories.icon}"></i>
						    	</div>
						    	<div class="media-body">
						    		<div class="lv-title category-title">
						    			<!-- IF categories.children.link -->
										<a href="{categories.children.link}" itemprop="url" target="_blank">
										<!-- ELSE -->
										<a href="{config.relative_path}/category/{categories.children.slug}" itemprop="url">
										<!-- ENDIF categories.children.link -->
										{categories.children.name}
										</a><br />
										<small class="lv-small">{categories.children.description}</small>
						    		</div>
						    	</div>
							</div>
							<div class="col-md-1 hidden-xs hidden-sm">
								<div class="stat">
									<div class="human-readable-number" title="{categories.children.topic_count}">{categories.children.topic_count}</div>
									<span class="stat-label">[[global:topics]]</span>
								</div>
							</div>
							<div class="col-md-1 hidden-xs hidden-sm">
								<div class="stat">
									<div class="human-readable-number" title="{categories.children.topic_count}">{categories.children.post_count}</div>
									<span class="stat-label">[[global:posts]]</span>
								</div>
							</div>
							<div class="col-md-3 hidden-xs last-post">
								<!-- BEGIN posts -->
								<div component="category/posts">
									<div class="pull-left hidden-xs user-avatar">
								    	<a href="{config.relative_path}/user/{categories.children.posts.user.userslug}">
								        	<!-- IF categories.children.posts.user.picture -->
						                    <img src="{categories.children.posts.user.picture}" alt="{categories.children.posts.user.username}"/>
						                    <!-- ELSE -->
						                    <div class="user-icon" style="background-color: {categories.children.posts.user.icon:bgColor};">{categories.children.posts.user.icon:text}</div>
						                    <!-- ENDIF categories.children.posts.user.picture -->
								    	</a>
									</div>
									<div class="media-body">
										<div class="topic-title">
											<a href="{config.relative_path}/topic/{categories.children.posts.topic.slug}/{categories.children.posts.index}"><small class="timeago" title="{categories.children.posts.timestampISO}"></small></a>
											<small class="topic-content">{categories.children.posts.content}</small>
										</div>
									</div>
								</div>
								<!-- END posts -->
							</div>
						</div>
						<!-- END categories.children -->
					<!-- ENDIF config.listSubcategories -->
				</div>
				<!-- END categories -->
			</div>
		</div>
	</div>
</div>
<!-- ENDIF config.categoriesAsList -->
