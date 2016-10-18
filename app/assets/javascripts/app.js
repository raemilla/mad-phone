$(document).ready(function(){
  $('.mark-done').on('click',function(){
    $('.mark-done').hide();
  });
  $('#my_form').on('submit',function(){
    var response = $('textarea').val()
    $('#my_form').hide();
    $('.sentence-add').append(response)
  });

  $('.vote').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "/votes",
      data: $(event.target).serialize()
    }).done(function(response){
      $('.vote-total').replaceWith(`<span class='vote-total'>${response}</span>`)
    })
  });

  $('#add-comment').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "/comments",
      data: {comment: $('#new-comment-data').val(), story_id: $(event.target).children()[2].value}
    }).done(function(response){
      console.log(response);
      $('.table').append(`<tr><td>${response.text}<br/><span class="additional-info">created by <a href="/users/${response.user_id}">${response.user.name}</a> on ${response.created_at}</span></tr></td>`)
      $($('#add-comment').children()[3]).val("")
    })
  });
});
