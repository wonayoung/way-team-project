$('.number-inc').each(function() {
  var $this = $(this),
      countTo = $this.attr('data-max');
  
  $({ countNum: $this.text()}).animate({
    countNum: countTo
  },
  {
    duration: 1500,
    easing:'linear',
    step: function() {
      $this.text(Math.floor(this.countNum));
    },
    complete: function() {
      $this.text(this.countNum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
    }
  });  
});