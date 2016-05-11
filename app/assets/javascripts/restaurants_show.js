$('document').ready(function(){
  $('#add-review').on('click', function(event){
    event.preventDefault();
    $('#new-review-form').toggleClass('hidden');
    console.log('hello')
  });
});
