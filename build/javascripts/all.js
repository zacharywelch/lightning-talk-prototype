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
      $count = $(this).find('.count')
      var count = parseInt($count.text());
      if (count == 12) {
        $count.text('13');
      }
      else {
        $count.text('12');
      }
    });

    document.body.className += ' animate'
  });
}).call(this);
