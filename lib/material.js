$(document).ready(function() {

    /*
    * Layout
    */
    (function(){
       //Get saved layout type from LocalStorage
       var layoutStatus = localStorage.getItem('ma-layout-status');
       if (layoutStatus == 1 && !config.menuInHeader) {
           $('body').addClass('sw-toggled');
           $('#tw-switch').prop('checked', true);
       }
       
       $('body').on('change', '#toggle-width input:checkbox', function(){
           if ($(this).is(':checked')) {
           $('body').addClass('toggled sw-toggled');
           localStorage.setItem('ma-layout-status', 1);
           }
           else {
           $('body').removeClass('toggled sw-toggled');
           localStorage.setItem('ma-layout-status', 0);
           }
       });
    })();

    if($('#chat-menu-trigger')[0]) {
        $('body').on('click', '#chat-menu-trigger', function(e){            
            e.preventDefault();
            $(this).toggleClass('open');
            $('.chat-menu').toggleClass('toggled');
        });
    }

    /*
     * Sidebar
     */
    (function(){
        //Toggle
        $('body').on('click', '#menu-trigger', function(e){            
            e.preventDefault();
            var x = $(this).data('trigger');
        
            $(x).toggleClass('toggled');
            $(this).toggleClass('open');

            
            if (x == '#sidebar') {
                $elem = '#sidebar';
                $elem2 = '#menu-trigger';
                
                if (!$('#chat').hasClass('toggled')) {
                    $('#header').toggleClass('sidebar-toggled');
                }
            }
            
            //When clicking outside
            if ($('#header').hasClass('sidebar-toggled')) {
                $(document).on('click', function (e) {
                    if (($(e.target).closest($elem).length === 0) && ($(e.target).closest($elem2).length === 0)) {
                        setTimeout(function(){
                            $($elem).removeClass('toggled');
                            $('#header').removeClass('sidebar-toggled');
                            $($elem2).removeClass('open');
                        });
                    }
                });
            }
        })
        
    })();

    $(window).on('action:ajaxify.end', function() {
        /*
         * Waves Animation
         */
        (function(){
            var wavesList = ['.btn'];

            for(var x = 0; x < wavesList.length; x++) {
                if($(wavesList[x])[0]) {
                    if($(wavesList[x]).is('a')) {
                        $(wavesList[x]).not('.btn-icon, input').addClass('waves-effect waves-button');
                    }
                    else {
                        $(wavesList[x]).not('.btn-icon, input').addClass('waves-effect');
                    }
                }
            }

            setTimeout(function(){
                if ($('.waves-effect')[0]) {
                   Waves.displayEffect();
                }
            });
        })();

        /*
         * Text Feild
         */
        
        //Add blue animated border and remove with condition when focus and blur
        if($('.fg-line')[0]) {
            $('body').on('focus', '.form-control', function(){
                $(this).closest('.fg-line').addClass('fg-toggled');
            })

            $('body').on('blur', '.form-control', function(){
                var p = $(this).closest('.form-group, .input-group');
                var i = p.find('.form-control').val();
                
                if (p.hasClass('fg-float')) {
                    if (i.length == 0) {
                        $(this).closest('.fg-line').removeClass('fg-toggled');
                    }
                }
                else {
                    $(this).closest('.fg-line').removeClass('fg-toggled');
                }
            });
        }

        //Add blue border for pre-valued fg-flot text feilds
        if($('.fg-float')[0]) {
            $('.fg-float .form-control').each(function(){
                var i = $(this).val();
                
                if (!i.length == 0) {
                    $(this).closest('.fg-line').addClass('fg-toggled');
                }
                
            });
        }

    });

    $(window).on('action:ajaxify.start', function() {
        if ($('#menu-trigger').hasClass('open')) {
            $('#menu-trigger').click();
        }

        if ($('.chats.dropdown').hasClass('open')) {
            $('.chats.dropdown').click();
        }

        if ($('.notifications.dropdown').hasClass('open')) {
            $('.notifications.dropdown').click();
        }
    });

    $('body').on('click', '#chat-list>li', function(e){
        if ($('.chats.dropdown').hasClass('open')) {
            $('.chats.dropdown').click();
        }
    });

    $('body').on('click', '#user-control-list>li', function(e){
        if ($('#user_label').hasClass('open')) {
            $('#user_label').click();
        }
    });

    
    $('.sclose').click(function(e){
        e.preventDefault();
        $('.popup-chat').toggleClass('hidden');
    });

    $('.sminimize').click(function(e){
        e.preventDefault();
        var $wcontent = $(this).parent().parent().next('.popup-chat-content');
        if($wcontent.is(':visible')) 
        {
          $(this).children('i').removeClass('fa fa-chevron-down');
          $(this).children('i').addClass('fa fa-chevron-up');
        }
        else 
        {
          $(this).children('i').removeClass('fa fa-chevron-up');
          $(this).children('i').addClass('fa fa-chevron-down');
        }            
        $wcontent.toggle(0);
    });

    $('#chat-message-input').on('keypress', function(e) {
        if(e.which === 13 && !e.shiftKey) {
            
            var msg = $('#chat-message-input').val();
            var toUid = parseInt($('.popup-chat-content li.active').attr('data-uid'), 10);
            if (msg.length) {
                msg = msg +'\n';
                socket.emit('modules.chats.send', {
                    touid:toUid,
                    message:msg
                }, function(err) {
                    if (err) {
                        if (err.message === '[[error:email-not-confirmed-chat]]') {
                            return app.showEmailConfirmWarning(err);
                        }
                        return app.alertError(err.message);
                    }
                    $('#chat-message-input').val('');
                });
            }
        }
    });

    $('#chat-message-input').on('keyup', function() {
        var val = !!$(this).val();
        if ((val && $(this).attr('data-typing') === 'true') || (!val && $(this).attr('data-typing') === 'false')) {
            return;
        }
        var toUid = parseInt($('.popup-chat-content li.active').attr('data-uid'), 10);

        socket.emit('modules.chats.user' + (val ? 'Start' : 'Stop') + 'Typing', {
            touid: toUid,
            fromUid: app.user.uid
        });
        $(this).attr('data-typing', val);
    });

    socket.on('event:chats.receive', function(data) {

        if (ajaxify.currentPage.slice(0, 6) === 'chats/') {
            // User is on the chats page, so do nothing (src/forum/chats.js will handle it)
            return;
        }

        var newPopup = false;

        if ($('.popup-chat').hasClass('hidden')) {
            $('.popup-chat').toggleClass('hidden');
            newPopup = true;
        }

        data.message.self = data.self;

        if(!$('.chat-user-' + data.withUid).length) {
            $.getJSON(config.relative_path + '/api/user/' + data.message.fromUser.userslug, function(user) {
                $('.popup-chat-content>.nav.nav-tabs').append('<li class="chat-user-' + data.withUid + '" data-uid="' + data.withUid + '"><a href="#chat-user-' + data.withUid +'" data-toggle="tab" title="' + data.message.fromUser.username + '"><img src="' + user.picture + '"/></a></li>');
            });

            $('.popup-chat-content>.tab-content').append('<div class="tab-pane" id="chat-user-' + data.withUid + '"><span class="user-typing hide"><i class="fa fa-pencil"></i> <span class="text"></span></span></div>');

                $('.popup-chat-content>.tab-content .user-typing .text').translateText('[[modules:chat.user_typing, ' + data.message.fromUser.username + ']]');

                templates.parse('partials/popup_chat_message' + (Array.isArray(data) ? 's' : ''), {
                    messages: data.message
                }, function onMessagesParsed(html) { 
                    var newMessage = $(html);
                    newMessage.insertBefore($('#chat-user-'+ data.withUid + ' .user-typing'));
                    newMessage.find('.timeago').timeago(); 
                });
        } else {
            templates.parse('partials/popup_chat_message' + (Array.isArray(data) ? 's' : ''), {
                messages: data.message
            }, function onMessagesParsed(html) { 
                var newMessage = $(html);
                newMessage.insertBefore($('#chat-user-'+ data.withUid + ' .user-typing'));
                newMessage.find('.timeago').timeago(); 
            });
        }

        if(newPopup) {
            $('#chat-user-' + data.withUid).addClass('active');
            $('.chat-user-' + data.withUid).addClass('active');
        }

        containerEl = $('.popup-chat-content .tab-content');
        if (containerEl.length) {
            containerEl.scrollTop(
                containerEl[0].scrollHeight - containerEl.height()
            );
        }
    });

    socket.on('event:chats.userStartTyping', function(withUid) {
        if($('.chat-user-' + withUid).length) {
            $('#chat-user-' + withUid).find('.user-typing').removeClass('hide');
        }

        containerEl = $('.popup-chat-content .tab-content');
        if (containerEl.length) {
            containerEl.scrollTop(
                containerEl[0].scrollHeight - containerEl.height()
            );
        }
    });

    socket.on('event:chats.userStopTyping', function(withUid) {
        if($('.chat-user-' + withUid).length) {
            $('#chat-user-' + withUid).find('.user-typing').addClass('hide');
        }
    });

    $('#chats_dropdown').on('click', function() {
            if ($('#chats_dropdown').parent().hasClass('open')) {
                return;
            }

            socket.emit('modules.chats.getRecentChats', {after: 0}, function(err, chats) {
                if (err) {
                    return app.alertError(err.message);
                }
                chats = chats.users;
                var userObj;

                $('#chat-list').empty();

                if (!chats.length) {
                    translator.translate('[[modules:chat.no_active]]', function(str) {
                        $('<li />')
                            .addClass('no_active')
                            .html('<a href="#">' + str + '</a>')
                            .appendTo($('#chat-list'));
                    });
                    return;
                }

                for(var x = 0; x<chats.length; ++x) {
                    userObj = chats[x];
                    dropdownEl = $('<li class="' + (userObj.unread ? 'unread' : '') + '"/>')
                        .attr('data-uid', userObj.uid)
                        .html('<a data-ajaxify="false">'+
                            '<img src="' +  userObj.picture + '" title="' + userObj.username +'" />' +
                            '<i class="fa fa-circle status ' + userObj.status + '"></i> ' +
                            userObj.username + '</a>')
                        .appendTo($('#chat-list'));

                    (function(userObj) {
                        dropdownEl.click(function() {
                            if (!ajaxify.currentPage.match(/^chats\//)) {
                                //app.openChat(userObj.username, userObj.uid);
                                if ($('.popup-chat').hasClass('hidden')) {
                                    $('.popup-chat').toggleClass('hidden');  
                                }

                                if(!$('.chat-user-' + userObj.uid).length) {
                                    
                                    $('.popup-chat-content>.nav.nav-tabs').append('<li class="chat-user-' + userObj.uid + '" data-uid="' + userObj.uid + '"><a href="#chat-user-' + userObj.uid +'" data-toggle="tab" title="' + userObj.username + '"><img src="' + userObj.picture + '"/></a></li>');

                                    $('.popup-chat-content>.tab-content').append('<div class="tab-pane" id="chat-user-' + userObj.uid + '"><span class="user-typing hide"><i class="fa fa-pencil"></i> <span class="text"></span></span></div>');

                                    $('.popup-chat-content>.tab-content .user-typing .text').translateText('[[modules:chat.user_typing, ' + userObj.username + ']]');
                                }
                            } else {
                                ajaxify.go('chats/' + utils.slugify(userObj.username));
                            }
                        });
                    })(userObj);
                }
            });
        });


});