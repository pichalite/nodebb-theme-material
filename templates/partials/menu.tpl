<div id="header-menu">
<header id="header">
    <ul class="header-inner">
        <li id="menu-trigger" data-trigger="#sidebar">
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>
    	<li class="logo">
			<!-- IF showSiteTitle -->
			<a href="{relative_path}/">
				{title}
			</a>
			<!-- ENDIF showSiteTitle -->
        </li>

        <li class="pull-right">
        <ul class="top-menu">

            <li class="nav navbar-nav pagination-block invisible visible-lg visible-md">
                <div class="dropdown">
                    <i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
                    <i class="fa fa-angle-up pointer fa-fw pageup"></i>

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span id="pagination"></span>
                    </a>

                    <i class="fa fa-angle-down pointer fa-fw pagedown"></i>
                    <i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i>

                    <div class="progress-container">
                        <div class="progress-bar"></div>
                    </div>

                    <ul class="dropdown-menu" role="menu">
                        <input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
                    </ul>
                </div>
            </li>

            <li>
                <a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
                    <i class="fa fa-check"></i>
                </a>
            </li>
            <!-- IF searchEnabled -->
            <li>
                <form id="search-form" class="hidden-xs" role="search" method="GET" action="">
                    <div class="hide" id="search-fields">
                        <div class="form-group">
                            <div class="fg-line">
                                <input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default hide">[[global:search]]</button>
                    </div>
                    <button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw"></i></button>
                </form>
            </li>
            <!-- ENDIF searchEnabled -->
			
			<!-- IF loggedIn -->
            <li class="notifications dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown">
                    <i class="notification-icon fa fa-fw fa-bell-o" data-content="0"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-lg pull-right">
                    <div class="listview">
                        <div class="lv-header">
                            [[notifications:title]]
                        </div>
                        <div class="lv-body c-overflow" id="notif-list">
                            <a href="#" class="lv-item"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
                        </div>
                        <div class="lv-footer">
                        <a href="#" class="mark-all-read">[[notifications:mark_all_read]]</a>
                        <hr />
                        <a href="{relative_path}/notifications">[[notifications:see_all]]</a>
                        </div>
                    </div>
                </div>
            </li>

            <!-- IF !disableChat -->
            <li class="chats dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="chat_dropdown">
                    <i component="chat/icon" class="fa fa-comment-o fa-fw"></i>
                </a>
                <div class="dropdown-menu pull-right" aria-labelledby="chat_dropdown">
                    <div class="listview">
                        <div class="lv-body c-overflow" id="chat-list">
                            <a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a> 
                        </div>
                        <div class="lv-footer">
                            <a href="{relative_path}/chats">[[modules:chat.see_all]]</a>
                        </div>
                    </div>
                </div>
            </li>
            
            <!-- ENDIF !disableChat -->
            <li id="user_label" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown">
                    <img id="user-header-picture" class="user-picture" src="{user.picture}"/>
                </a>
                <ul id="user-control-list" class="dropdown-menu pull-right" aria-labelledby="user_dropdown">
                    <li>
                        <a id="user-profile-link" href="{relative_path}/user/{user.userslug}">
                            <i class="fa fa-fw fa-circle status {user.status}"></i> <span id="user-header-name">{user.username}</span>
                        </a>
                    </li>
                    <li role="presentation" class="divider"></li>
                    <li>
                        <a href="#" class="user-status" data-status="online">
                            <i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="away">
                            <i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="dnd">
                            <i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="offline">
                            <i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
                        </a>
                    </li>
                    <li role="presentation" class="divider"></li>
                    <li id="logout-link">
                        <a href="#"><i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span></a>
                    </li>
                </ul>
            </li>
            <!-- ELSE -->
            <!-- IF allowRegistration -->
            <li>
                <a href="{relative_path}/register">
					<span>[[global:register]]</span>
				</a>
            </li>
            <!-- ENDIF allowRegistration -->
            <li>
            	<a href="{relative_path}/login">
					<span>[[global:login]]</span>
				</a>
            </li>
            <!-- ENDIF loggedIn -->
            </ul>
        </li>
    </ul>
    
</header>
</div>
<section id="main">
    <aside id="sidebar">
        <div class="sidebar-inner">
            <div class="si-inner">
                <ul class="main-menu">
                    <li id="toggle-width" class="hidden-xs">
                        <div class="toggle-switch">
                            <input id="tw-switch" type="checkbox" hidden="hidden">
                            <label for="tw-switch" class="ts-helper"></label>
                        </div>
                    </li>        
					<!-- BEGIN navigation -->
					<!-- IF function.displayMenuItem, @index -->
					<li class="{navigation.class}">
						<a href="{relative_path}{navigation.route}" title="{navigation.title}" id="{navigation.id}" target="{navigation.properties.target}">
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->
							<!-- IF navigation.text -->
							{navigation.text}
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- ENDIF function.displayMenuItem -->
					<!-- END navigation -->
                </ul>
            </div>
        </div>
    </aside>
</section>