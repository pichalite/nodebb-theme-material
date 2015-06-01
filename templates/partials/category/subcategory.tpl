<div class="subcategory">
	<!-- IF children.length -->
	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
			<div class="lv-title">
				Subcategories
			</div>
			</div>
			<div class="lv-body">
				<!-- BEGIN children -->
				<div class="lv-item media row clearfix">
					<div class="pull-left" style="{function.generateCategoryBackground}">
			        	<i class="fa fa-fw {children.icon}"></i>
			    	</div>
			    	<div class="media-body">
			    		<div class="lv-title">
			    			<!-- IF children.link -->
							<a href="{children.link}" itemprop="url" target="_blank">
							<!-- ELSE -->
							<a href="{config.relative_path}/category/{children.slug}" itemprop="url">
							<!-- ENDIF children.link -->
							{children.name}
							</a><br />
							<small class="lv-small">{children.description}</small>
			    		</div>
			    		<!-- IF !children.link -->
			    		<div class="lv-actions">
			    			<ul>
			    				<li>
			    					{children.topic_count}
									<small>[[global:topics]]</small>
			    				</li>
			    				<li>
			    					{children.post_count}
									<small>[[global:posts]]</small>
			    				</li>
			    			</ul>
			    		</div>
			    		<!-- ENDIF !children.link -->
			    	</div>
				</div>
				<!-- END children -->
			</div>
		</div>
	</div>
	<!-- ENDIF children.length -->
</div>