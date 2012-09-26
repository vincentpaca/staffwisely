module ApplicationHelper
  def ga_js
    js = <<-JS
      <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-34927780-1']);
        _gaq.push(['_setDomainName', 'staffwisely.com']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

      </script>
    JS

    js.html_safe
  end

  def active?(path)
    "active" if current_page?(path)
  end

  def signup_path?(path)
    true if ["/users/sign_up", "/app/company/new", "/users/sign_in"].include? path
  end

  def fading_flash_notice
    return '' if !flash[:notice]
    notice_id = rand.to_s.gsub(/\./, '')
    notice = <<-EOF
      $('.notification').append('<div id="#{notice_id}" class="flash_notice">#{ image_tag("check.png") } #{flash[:notice]}</div>');
      $("##{notice_id}").fadeOut(5000, function(){
        $('.notification').fadeOut(500);
      });
    EOF
    notice.html_safe
  end

  def fading_flash_alert
    return '' if !flash[:alert]
    notice_id = rand.to_s.gsub(/\./, '')
    notice = <<-EOF
      $('.notification').append('<div id="#{notice_id}" class="flash_notice">#{ image_tag("warning.gif") } #{flash[:alert]}</div>');
      $("##{notice_id}").fadeOut(5000, function(){
        $('.notification').fadeOut(500);
      });
    EOF
    notice.html_safe
  end

end
