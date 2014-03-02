      <div class="share">
<!-- Facebook -->
<#if config.social_facebook=="true">
        <a href="http://www.facebook.com/sharer.php?u=${config.site_host}${content.uri}" target="_blank"><img src="/img/sharebuttons/facebook.png" alt="Facebook" /></a>
</#if>
<!-- Twitter -->
<#if config.social_twitter=="true">
        <#assign url="${config.site_host}${content.uri}">
        <a href="http://twitter.com/share?url=${config.site_host}${content.uri}&text=${content.title} ${url}" target="_blank"><img src="/img/sharebuttons/twitter.png" alt="Twitter" /></a>
</#if>
<!-- Google+ -->
<#if config.social_googleplus=="true">
        <a href="https://plus.google.com/share?url=${config.site_host}${content.uri}" target="_blank"><img src="/img/sharebuttons/google_plus.png" alt="Google" /></a>
</#if>
      </div>