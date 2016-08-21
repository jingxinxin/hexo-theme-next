<div class="copyright">
  {% set current = date(Date.now(), "YYYY") %}
  &copy;
  {% if theme.since and theme.since != current %}
    {{ theme.since }}
    -
  {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
    <!--简体繁体转换-->
  　<a id="translateLink" href="javascript:translatePage();">繁体</a>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="https://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
  {{ __('footer.theme') }}
  -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT.{{ theme.scheme }}
  </a>
</div>

<!--简体繁体转换-->
<script type="text/javascript" src="http://7xs9s7.com1.z0.glb.clouddn.com/js%2Fcommon%2Ftw_cn.js"></script>
<script type="text/javascript">
  var defaultEncoding = 2; //网站编写字体是否繁体，1-繁体，2-简体
  var translateDelay = 0; //延迟时间,若不在前, 要设定延迟翻译时间, 如100表示100ms,默认为0
  var cookieDomain = "http://www.51201314.me/jacks"; //Cookie地址, 一定要设定, 通常为你的网址
  var msgToTraditionalChinese = "繁体"; //此处可以更改为你想要显示的文字
  var msgToSimplifiedChinese = "简体"; //同上，但两处均不建议更改
  var translateButtonId = "translateLink"; //默认互换id
  translateInitilization();
</script>

<!--不蒜子计算器-->
<script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
<br>
本Blog总访问量
<span id="busuanzi_value_site_pv" style="color:forestgreen"></span>
&nbsp&nbsp&nbsp 您是第<span id="busuanzi_value_site_uv" style="color:forestgreen"></span>个来到的博友
<br>感谢Hexo，感谢图片云储存七牛，感谢每一位来到我世界的朋友,欢迎常来留言学习交流
{#{% include '../_scripts/third-party/analytics/busuanzi-counter.swig' %}#}
{% block footer %}{% endblock %}
