(function($){
  $.fn.outside = function(ename, cb){
    return this.each(function(){
      var $this = $(this),
          self = this;

      $(document).bind(ename, function tempo(e){
        if(e.target !== self && !$.contains(self, e.target)){
          cb.apply(self, [e]);
          if(!self.parentNode) $(document.body).unbind(ename, tempo);
        }
      });
    });
  };
}(jQuery));

