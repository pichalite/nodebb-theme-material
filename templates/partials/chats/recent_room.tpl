<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="lv-item media <!-- IF ../unread -->unread<!-- ENDIF ../unread -->">
  <!-- IF rooms.lastUser.uid -->
	<div class="lv-avatar pull-left" data-username="{rooms.lastUser.username}" data-uid="{rooms.lastUser.uid}">
		<!-- IF rooms.lastUser.picture -->
		<img class="user-avatar" src="{rooms.lastUser.picture}">
		<!-- ELSE -->
		<div class="user-icon" style="background-color: {rooms.lastUser.icon:bgColor};">{rooms.lastUser.icon:text}</div>
		<!-- ENDIF rooms.lastUser.picture -->
	</div>

	<!-- ELSE -->
	[[modules:chat.no-users-in-room]]
	<!-- ENDIF rooms.lastUser.uid -->
	<div class="media-body">
		<span component="chat/title" class="lv-title"><!-- IF rooms.roomName -->{rooms.roomName}<!-- ELSE -->{rooms.usernames}<!-- ENDIF rooms.roomName --></span>
	</div>
</li>