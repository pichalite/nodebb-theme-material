<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="card chat-card" id="messages-main">
    <div class="ms-menu">
        <div class="listview lv-message">
            <div class="lv-header-alt clearfix">
                <div class="form-group">
 					<div class="fg-line">
 						<input class="form-control" component="chat/search" type="text" placeholder="[[users:enter_username]]"/>
 					</div>
 				</div>
            </div>
        </div>
        <ul component="chat/search/list" class="chat-search-list">
			
		</ul>
        <ul component="chat/recent" class="listview lv-user chats-list">
            <!-- BEGIN rooms -->
            <li component="chat/recent/room" data-roomid="{rooms.roomId}" class="lv-item media <!-- IF ../unread -->unread<!-- ENDIF ../unread -->">
                <i class="fa fa-times pull-right leave" component="chat/leave"></i>
                <!-- IF rooms.lastUser.uid -->
				<div class="lv-avatar pull-left" data-username="{rooms.lastUser.username}" data-uid="{rooms.lastUser.uid}">
					<!-- IF rooms.lastUser.picture -->
					<img src="{rooms.lastUser.picture}">
					<!-- ELSE -->
					<div class="user-icon" style="background-color: {rooms.lastUser.icon:bgColor};">{rooms.lastUser.icon:text}</div>
					<!-- ENDIF rooms.lastUser.picture -->
				</div>
                <span title="[[global:{rooms.lastUser.status}]]" class="status {rooms.lastUser.status}"></span>
                <!-- ELSE -->
                [[modules:chat.no-users-in-room]]
                <!-- ENDIF rooms.lastUser.uid -->
                <div class="media-body">
                    <span class="lv-title">{rooms.usernames}</span>
				    <span class="lv-small">{rooms.teaser.content}</span>
                </div>
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
                    <div class="users-tag-container">
 				        <input class="users-tag-input form-control" type="text" placeholder="enter users here" tabindex="4"/>
 			        </div>
                </div>
                
                <div class="lv-actions actions">
                    <div data-action="pop-out">
                        <i class="fa fa-compress"></i>
                    </div>
                </div>
            </div>
            
            <span class="since-bar"><a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
            
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