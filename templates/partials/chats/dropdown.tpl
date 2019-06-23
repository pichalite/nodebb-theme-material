<!-- IF rooms.length -->
<!-- BEGIN rooms -->
<li class="<!-- IF rooms.unread -->unread<!-- ENDIF rooms.unread -->" data-roomId="{rooms.roomId}">
  <a data-ajaxify="false">
    <!-- IF rooms.lastUser -->
		<!-- IF rooms.lastUser.picture -->
		<img class="user-picture" src="{rooms.lastUser.picture}" title="{rooms.lastUser.username}" />
		<!-- ELSE -->
		<div class="user-icon" style="background-color: {rooms.lastUser.icon:bgColor}">{rooms.lastUser.icon:text}</div>
		<!-- ENDIF rooms.lastUser.picture -->
		<!-- ENDIF rooms.lastUser -->

		<!-- IF rooms.lastUser -->
		{rooms.usernames}
		<!-- ELSE -->
		[[modules:chat.no-users-in-room]]
		<!-- ENDIF rooms.lastUser -->
  </a>
</li>
<!-- END rooms -->
<!-- ELSE -->
<li class="no_active"><a href="#">[[modules:chat.no_active]]</a></li>
<!-- ENDIF rooms.length -->
