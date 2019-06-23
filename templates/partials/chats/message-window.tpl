<!-- IF roomId -->
<div component="chat/messages" data-roomid="{roomId}">
  <div class="listview lv-message">
    <div component="chat/header" class="lv-header-alt clearfix">
			<div id="ms-menu-trigger">
				<div class="line-wrap">
					<div class="line top"></div>
					<div class="line center"></div>
					<div class="line bottom"></div>
				</div>
			</div>

      <ul class="lv-actions actions">
        <li class="dropdown">
          <span data-toggle="dropdown" component="chat/controlsToggle" aria-expanded="true"><i class="fa fa-cog"></i></span>
          <ul class="dropdown-menu dropdown-menu-right pull-right" component="chat/controls">
						<!-- IF users.length -->
						<li class="dropdown-header">[[modules:chat.in-room]]</li>
						<!-- BEGIN users -->
						<li>
							<a href="{config.relative_path}/uid/{../uid}">
								<!-- IF ../picture -->
								<img class="avatar avatar-sm" component="user/picture" src="{../picture}" itemprop="image" />
								<!-- ELSE -->
								<div class="avatar avatar-sm" component="user/picture" style="background-color: {../icon:bgColor};">{../icon:text}</div><!-- END -->{../username}
							</a>
						</li>
						<!-- END -->
						<li role="separator" class="divider"></li>
						<!-- END -->
						<li class="dropdown-header">[[modules:chat.options]]</li>
						<li>
							<a href="#" data-action="members"><i class="fa fa-fw fa-cog"></i> [[modules:chat.manage-room]]</a>
						</li>
						<li>
							<a href="#" data-action="rename"><i class="fa fa-fw fa-edit"></i> [[modules:chat.rename-room]]</a>
						</li>
						<li>
							<a href="#" data-action="leave"><i class="fa fa-fw fa-sign-out"></i> [[modules:chat.leave]]</a>
						</li>
        	</ul>
        </li>
				<li data-action="pop-out">
					<i class="fa fa-compress"></i>
				</li>
        <li data-action="close">
          <i class="fa fa-close"></i>
        </li>
      </ul>

			<span class="members">
				[[modules:chat.chatting_with]]:
				<!-- BEGIN users -->
				<a href="{config.relative_path}/uid/{../uid}">{../username}</a><!-- IF !@last -->,<!-- END -->
				<!-- END -->
			</span>
    </div>

		<ul class="lv-body chat-content">
			<!-- IMPORT partials/chats/messages.tpl -->
		</ul>

		<div component="chat/composer" class="lv-footer ms-reply">
			<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="chat-input" <!-- IF !canReply -->readonly<!-- ENDIF !canReply -->></textarea>
			<button data-action="send" <!-- IF !canReply -->disabled<!-- ENDIF !canReply -->><i class="fa fa-send"></i></button>
			<span component="chat/message/remaining">{maximumChatMessageLength}</span>
		</div>
  </div>
</div>
<!-- ELSE -->
<div>
	<div class="listview lv-message">
		<div class="lv-header-alt clearfix">
			<div id="ms-menu-trigger" class="">
				<div class="line-wrap">
					<div class="line top"></div>
					<div class="line center"></div>
					<div class="line bottom"></div>
				</div>
			</div>
		</div>
		<ul class="lv-body chat-content">
			<div class="alert alert-info">
					[[modules:chat.no-messages]]
			</div>
		</ul>
	</div>
</div>
<!-- ENDIF roomId -->