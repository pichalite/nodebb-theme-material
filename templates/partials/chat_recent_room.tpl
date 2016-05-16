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