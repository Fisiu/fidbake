          <p class="post-meta">
            <i class="fa fa-calendar"></i>&nbsp;${date?string("dd MMMM yyyy")}&nbsp;&nbsp;
            <#if config.meta_author?has_content>
            <i class="fa fa-user"></i>&nbsp;${config.meta_author}&nbsp;&nbsp;
            </#if>
            <i class="fa fa-comment"></i>&nbsp;Counter
          </p>