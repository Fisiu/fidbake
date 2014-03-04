      </div><!-- /.container -->

    <footer>
      <div class="container">
        <hr>
        <div class="row">
          <div class="col-xs-10">
            <p class="text-muted credit">&copy; ${config.site_copyright} 2014 | Mixed with <a href="http://getbootstrap.com/">Bootstrap v3.1.1</a> | Baked with <a href="http://jbake.org">JBake ${version}</a> | <i title="Linux" class="fa fa-linux"></i></p>
          </div>
          <div class="col-xs-2 gotop">
            <a href="#"><i class="fa fa-arrow-circle-up"> top</i></a>
          </div>
        </div>
      </div>
    </footer>

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    
    <#if config.prettify_enabled?? && config.prettify_enabled == "true">
    <script src="//cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.min.js"></script>
    <script type="text/javascript">
      <!-- load prettify only when needed -->
      $(document).ready(function(){
        var prettify = false;
        <#if config.prettify_linenums?? && config.prettify_linenums == "true">
        var classToAdd = 'prettyprint snippet linenums';
        <#else>
        var classToAdd = 'prettyprint snippet';
        </#if>
        $("pre > code").each(function() {
          $("pre > code").parent().addClass(classToAdd);
          prettify = true;
        });
        if(prettify) {
          prettyPrint();
        }
      });
    </script>
    </#if>

    <#if config.disqus_enabled?? && config.disqus_enabled == "true">
    <script type="text/javascript">
      /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
      var disqus_shortname = '${config.disqus_username}'; // required: replace example with your forum shortname

      /* * * DON'T EDIT BELOW THIS LINE * * */
      (function () {
        var s = document.createElement('script'); s.async = true;
        s.type = 'text/javascript';
        s.src = '//' + disqus_shortname + '.disqus.com/count.js';
        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
      }());
    </script>
    </#if>
  </body>
</html>