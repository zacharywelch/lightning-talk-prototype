(function() {
  $(function() {
    $('a[href="#fakelink"]').click(function(e) {
      return e.preventDefault()
    });
 
    $('.tagsinput').tagsinput({
      tagClass: 'btn-default',
      maxTags: 1
    });

    Ladda.bind('.ladda-button', { timeout: 2000 } );
    
    $('.datepicker').each(function(index, value) {
      new Pikaday({ field: value });
    });

    $('.favorite').click(function(e) {
      $(this).find('i').toggleClass('danger quiet');
    });

    document.body.className += ' animate'
  });
}).call(this);
