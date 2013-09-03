// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  $('#user_role_id').on('change', function(){
    var role = $('#user_role_id').val();
    if (role != "") {
      $.ajax({
        type: "POST",
        url: "/get_activities/"+role,
        success: function(data){
          var activities = $('#select-activity');
          activities.html('');
          $.each(data, function(index, value) {
            var opt = $('<input>');
            opt.attr('value', value['id']);
            opt.attr('type','checkbox');
            opt.attr('name','activity_id[]');
            activities.append(value['name'])
            opt.appendTo(activities);  
          });
        }
      });
    } else {
      $('#select-activity').html('');

    }
  });

  var timelyrefreshnotifications = function(){
      var url = '/check_for_notifications';
      console.log('call ...');

      var notifications = '';

      $.get(url, function(data,status){
        console.log(data);
        
        if (data.count > 0) {
          var text = "Имате " + data.count + " нови кандидатсвания по Вашите обяви.";
          var link = "<a href='/notifications'>" + text + "</a>";
          notifications += link;
        }

        console.log('-----------------');
        console.log(data.owner_phone);

        if ( typeof(data.owner_phone) != "undefined" && data.owner_phone.length > 0) {
          var text = "Вашата кандидатура е приета успешно. Телефон за връзка: " + data.owner_phone;
          var link = "<a href='/notifications'>" + text + "</a>";
          notifications += link;
        }

         $('#notifications').html(notifications);
      });
  };
  
    setInterval(timelyrefreshnotifications, 6000);

  $(".reply_link").click(function () {
    $("#reply_form").show("slow");
    $("#reply_message_id").val($(this).data("message"));
  });  

  $('.message_form').submit(function(e) {
    $(this).hide("slow");
  }); 

  $('#button_apply').click(function(event) {
    event.preventDefault();

    $.post('/ads/apply', {ad_id: $('#ad_id').val()}, function() {
      $("#apply_message").show();
      $('#button_apply').hide();
    });
  });

$('.notification_accept').click(function(event) {
    event.preventDefault();

    var notification_id = $(this).data('app-id');
    
    $.post('/notifications_accept', {notification_id: notification_id}, function(response) {
      console.log('dasdasdasdasdasfas');
 
    });
  });

$('.notification_reject').click(function(event) {
    event.preventDefault();

    var notification_id = $(this).data('app-id');
    
    $.post('/notifications_reject', {notification_id: notification_id}, function(response) {
      console.log('dasdasdasdasdasfas');
    });
  });

});

