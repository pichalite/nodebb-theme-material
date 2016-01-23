<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="card chat-card" id="messages-main">
    <div class="ms-menu">
        <ul component="chat/recent" class="listview lv-user chats-list">
            <!-- BEGIN rooms -->
            <li component="chat/recent/room" data-roomid="{rooms.roomId}" class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->">

				<div data-username="{rooms.lastUser.username}" data-uid="{rooms.lastUser.uid}">
					<!-- IF rooms.lastUser.picture -->
					<img class="user-img" src="{rooms.lastUser.picture}">
					<!-- ELSE -->
					<div class="user-icon user-img" style="background-color: {rooms.lastUser.icon:bgColor};">{rooms.lastUser.icon:text}</div>
					<!-- ENDIF rooms.lastUser.picture -->
					<i component="user/status" title="[[global:{rooms.lastUser.status}]]" class="fa fa-circle status {rooms.lastUser.status}"></i>
					<span class="username">{rooms.usernames}</span>
				</div>

				<span class="teaser-content">{rooms.teaser.content}</span>
				<span class="teaser-timestamp timeago pull-right" title="{rooms.teaser.timestampISO}"></span>
			</li>
            <!-- END rooms -->
        </ul>
    </div>

    <!-- IF roomId -->
    <div component="chat/messages" class="ms-body expanded-chat" data-roomid="{roomId}">
        <div class="listview lv-message">
            <div class="lv-header-alt clearfix">
                <div id="ms-menu-trigger" class="">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </div>

                <div class="lvh-label">
                    <span component="chat/title" class="c-black">[[modules:chat.chatting_with]]</span>
                    <div class="users-tag-container">
 				        <input class="users-tag-input" type="text" class="form-control" placeholder="enter users here" tabindex="4"/>
 			        </div>
                </div>
                
                <div class="lv-actions actions">
                    <div data-action="pop-out">
                        <i class="fa fa-compress"></i>
                    </div>
                </div>
            </div>
            
            <ul class="lv-body chat-content">
            <!-- IMPORT partials/chat_messages.tpl -->
            </ul>
            
            <div class="lv-footer ms-reply">
                <textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="chat-input"></textarea>
                
                <button data-action="send"><i class="fa fa-send"></i></button>
            </div>
        </div>
    </div>
    <!-- ELSE -->
    <div class="ms-body expanded-chat">
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

</div>