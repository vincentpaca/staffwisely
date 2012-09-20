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
end
