$(document).ready(function(){
  $('.mark-done').on('click',function(){
    $('.mark-done').after("<div class='alert alert-success'><a class='close' data-dismiss='alert' aria-label='close'>&times;</a>This story is complete. Feel free to share with your friends!</div>")
    $('.mark-done').hide();

  });

  $('#my_form').on('submit', function(){
    var response = $('.browse-add-sentence').val();
    $('#my_form').hide();
    $('.sentence-add').append(response);
  });

  $('.vote').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "/votes",
      data: $(event.target).serialize()
    }).done(function(response){
      $('.vote-total').replaceWith("<span class='vote-total'>"+response+"</span>");
    });
  });

  $('#add-comment').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "/comments",
      data: {comment: $('#new-comment-data').val(), story_id: $(event.target).children()[2].value}
    }).done(function(response){
      $('.table').append("<tr><td>"+response.text+"<br/><span class='additional-info'>posted by <a href='/users/"+response.user_id+"'>"+response.user.name+"</a> on " +response.created_at+" </span></tr></td>");
      $('#add-comment').children("#new-comment-data").val("");
    });
  });
});
