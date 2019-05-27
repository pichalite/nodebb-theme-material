<div class="chats chats-full">
  <!-- IMPORT partials/breadcrumbs.tpl -->
  <div class="card chat-card" id="messages-main">
		<div component="chat/nav-wrapper" data-loaded="<!-- IF roomId -->1<!-- ELSE -->0<!-- END -->" class="ms-menu">
			<div class="listview lv-message hidden-xs">
				<div class="lv-header-alt clearfix">
					<div class="new-chat pull-left" title="New Chat">
						<i class="fa fa-comments-o"></i>
					</div>
				</div>
			</div>
			<ul component="chat/recent" class="listview lv-user chats-list">
				<!-- BEGIN rooms -->
				<!-- IMPORT partials/chats/recent_room.tpl -->
				<!-- END rooms -->
			</ul>
		</div>
    <div class="chat-search-menu">
			<div class="listview lv-message">
				<div class="lv-header-alt clearfix">
					<div id="chat-search-menu-trigger">
						<div class="line-wrap">
							<div class="line top"></div>
							<div class="line center"></div>
							<div class="line bottom"></div>
						</div>
					</div>
				</div>
			</div>
      <div class="form-group">
     		<div class="fg-line">
     			<input class="form-control" component="chat/search" type="text" placeholder="[[users:enter_username]]"/>
     		</div>
     	</div>
      <ul component="chat/search/list" class="chat-search-list">
    	</ul>
    </div>

		<div class="ms-body expanded-chat" component="chat/main-wrapper">
			<!-- IMPORT partials/chats/message-window.tpl -->
		</div>
  </div>
</div>