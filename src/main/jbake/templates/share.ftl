      <div class="share">
<#assign post_url = "http://" + config.site_host + content.uri>
<#if config.share_counters?? && config.share_counters == "true">
        <div class="social">
  <#if config.share_facebook?? && config.share_facebook == "true">
  <!-- Facebook -->
          <span class="facebook">
            <iframe src="//www.facebook.com/plugins/like.php?href=http://${post_url}&layout=button_count&action=like&show_faces=false&share=false&height=21&appId=${config.share_facebook_appid}" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
          </span>
  </#if>
  <!-- Google+ -->
  <#if config.share_googleplus?? && config.share_googleplus == "true">
          <span class="google">
            <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
            <g:plusone size="medium" href="${post_url}"></g:plusone>
          </span>
  </#if>
  <!-- Twitter -->
  <#if config.share_twitter?? && config.share_twitter == "true">
          <span class="twitter">
            <a href="http://twitter.com/share" class="twitter-share-button" data-url="${post_url}">Tweet</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          </span>
        </div>
  </#if>
<#else>
  <!-- Facebook -->
  <#if config.share_facebook?? && config.share_facebook == "true">
          <a href="http://www.facebook.com/sharer.php?u=${post_url}" target="_blank"><img src="/img/sharebuttons/facebook.png" alt="Facebook" /></a>
  </#if>
  <!-- Google+ -->
  <#if config.share_googleplus?? && config.share_googleplus == "true">
          <a href="https://plus.google.com/share?url=${post_url}" target="_blank"><img src="/img/sharebuttons/google_plus.png" alt="Google" /></a>
  </#if>
  <!-- Twitter -->
  <#if config.share_twitter?? && config.share_twitter == "true">
          <#assign url = config.site_host+content.uri>
          <a href="http://twitter.com/share?url=${post_url}&text=${content.title} ${url}" target="_blank"><img src="/img/sharebuttons/twitter.png" alt="Twitter" /></a>
  </#if>
</#if>
      </div>
