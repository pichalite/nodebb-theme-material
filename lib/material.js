"use strict";
/*globals ajaxify, config, utils, app, socket*/

$(document).ready(function() {

    setupProgressBar();
    animateCategoryCards();
    setupSideBar();
    setupWavesEffect();
    setupFloatingLabels();
    setupMenus();
    setupChatSearch();

    function setupProgressBar() {
        $(window).on('action:ajaxify.start', function() {
            $('.material-load-bar').css('height', '3px');
        });

        $(window).on('action:ajaxify.end', function(ev, data) {
            setTimeout(function(){ $('.material-load-bar').css('height', '0px'); }, 1000);
            
        });
    }

    function animateCategoryCards() {
        $(window).on('action:ajaxify.end', function() {
            var speed = 2000;
            var container =  $('.display-animation');
            container.each(function() {
                var elements = $(this).children();
                elements.each(function() {
                    var elementOffset = $(this).offset();
                    var offset = elementOffset.left*0.8 + elementOffset.top;
                    var delay = parseFloat(offset/speed).toFixed(2);
                    $(this)
                        .css("-webkit-animation-delay", delay+'s')
                        .css("-o-animation-delay", delay+'s')
                        .css("animation-delay", delay+'s')
                        .addClass('animated');
                });
            });
        });
    }

    function setupSideBar() {
      
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
        });

  
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

        $(window).on('action:ajaxify.start', function() {
            if ($('#menu-trigger').hasClass('open')) {
                $('#menu-trigger').click();
            }
        });
    }

    function setupWavesEffect() {
        $(window).on('action:ajaxify.end', function() {

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

        });
    }

    function setupFloatingLabels() {
        $(window).on('action:ajaxify.end', function() {
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
    }

    function setupMenus() {
        $(window).on('action:ajaxify.start', function() {

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

        $('body').on('click', '#ms-menu-trigger', function(e){            
            e.preventDefault();
            $(this).toggleClass('open');
            $('.ms-menu').toggleClass('toggled');
        });

        $('body').on('click', '.ms-menu .chats-list>li', function(e){
            if ($('#ms-menu-trigger').hasClass('open')) {
                $('#ms-menu-trigger').toggleClass('open');
                $('.ms-menu').toggleClass('toggled');
            }
        });
        
    }
    
    function setupChatSearch() {
        $(window).on('action:ajaxify.end', function() {
             $('body').on('click', '.new-chat', function(e){            
                e.preventDefault();
                $('.chat-search-menu').addClass('toggled');
                $('[component="chat/search"]').focus();
            });
        
            $(document).keyup(function(e) {
                if (e.keyCode === 27 && $('.chat-search-menu').hasClass('toggled')) {
                    $('.chat-search-menu').removeClass('toggled');
                    $('[component="chat/search"]').val('');
                }
            });
            
            $('body').on('click', '#chat-search-menu-trigger', function(e){ 
                $('.chat-search-menu').removeClass('toggled');
                $('[component="chat/search"]').val('');
                $('[component="chat/search/list"]').empty();
            });
        });
    }
});