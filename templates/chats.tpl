<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="card" id="chat-main">
    <div class="chat-menu">   
        <div class="chat-block">
            <div class="panel-group" aria-multiselectable="true">
                <div class="panel panel-collapse">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-target=".recent-chats" aria-expanded="true">
                                [[modules:chat.recent-chats]]
                            </a>
                        </h4>
                    </div>
                    <div class="recent-chats collapse in">
                        <div class="panel-body">
                            <div class="chats-list listview lv-user">                                
                                <!-- BEGIN chats -->
                                <li class="lv-item media<!-- IF chats.unread --> unread<!-- ENDIF chats.unread -->" data-username="{chats.username}" data-uid="{chats.uid}">
                                    <div class="pull-left">
                                        <img src="{chats.picture}" alt="">
                                    </div>
                                    <div class="media-body">
                                        <div class="lv-title">{chats.username}</div>
                                    </div>
                                </li>
                                <!-- END chats -->     
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-collapse">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-target=".contacts" aria-expanded="false">
                                [[modules:chat.contacts]]
                            </a>
                        </h4>
                    </div>
                    <div class="contacts collapse">
                        <div class="panel-body">
                            <div class="chats-list listview lv-user"> 
                                <!-- BEGIN contacts -->
                                <li class="lv-item media" data-username="{contacts.username}" data-uid="{contacts.uid}">
                                    <div class="pull-left">
                                        <img src="{contacts.picture}" alt="">
                                    </div>
                                    <div class="media-body">
                                        <div class="lv-title">{contacts.username}</div>
                                    </div>
                                </li>
                                <!-- END contacts --> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    
    <div class="chat-body expanded-chat" data-uid="{meta.uid}" data-username="{meta.username}">
        <div class="listview lv-message">
            <div class="lv-header-alt bgm-white">
                <div id="chat-menu-trigger">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </div>
                
                <div class="chat-header">
                    <!-- IF meta.username -->
                    <span>[[modules:chat.chatting_with]] {meta.username}</span>
                    <!-- ELSE -->
                    <div class="alert alert-info">
                        [[modules:chat.no-messages]]
                    </div>
                    <!-- ENDIF meta.username -->
                </div>
                <!-- IF meta.username -->
                <button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
                <!-- ENDIF meta.username -->
            </div>

            <!-- IF meta -->
            <span class="since-bar"><a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
            <!-- ENDIF meta -->
            
            <ul class="lv-body chat-content">
                <!-- IF meta -->
                <!-- IMPORT partials/chat_messages.tpl -->                                 
                <span class="user-typing pull-right hide"><i class="fa fa-pencil"></i> [[modules:chat.user_typing, {meta.username}]]</span>
                <!-- ENDIF meta -->
            </ul>
            <!-- IF meta -->
            <div class="lv-footer chat-reply">
                <textarea placeholder="[[modules:chat.placeholder]]" class="form-control chat-input" rows="1"></textarea>
                <button type="button" data-action="send"><i class="fa fa-send"></i></button>
            </div>
            <!-- ENDIF meta -->
            
        </div>
    </div>
</div>