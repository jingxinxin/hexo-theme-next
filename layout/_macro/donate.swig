{#
config 要到hexo的config文件中配置
#}
{% if config.donate.enable %}
  {% if is_home() %}
  {% else %}
    {% set divStyle = "display:inline-block" %}
    {% if config.donate.block %}
      {% set divStyle = "" %}
    {% endif %}

    <div class ="post-donate">
      <div id="donate_board" class="donate_bar center">
        <a id="btn_donate" class="btn_donate" href="javascript:;" title="Donate 打赏"></a>
        <span class="donate_txt">
                 &uarr;<br>
          {% if config.donate.text %}
            {{ config.donate.text }}
          {% endif %}
              </span>
        <br>
      </div>

      <div id="donate_guide" class="donate_bar center hidden">
        {% if config.donate.alipay %}
          <div style="{{divStyle}}">
            <a href="{{ config.donate.alipay }}" title="{{config.donate.alipay_name}}" class="fancybox" rel="article0">
              <img src="{{ config.donate.alipay }}"  height="164px" width="164px">
              <br>
              <span>{{config.donate.alipay_name}}</span>
            </a>
          </div>
        {% endif %}

        {% if config.donate.wechat %}
          <div style="{{divStyle}}">
            <a href="{{ config.donate.wechat }}" title="{{config.donate.wechat_name}}" class="fancybox" rel="article0">
              <img src="{{ config.donate.wechat }}"  height="164px" width="164px">
              <br>
              <span>{{config.donate.wechat_name}}</span>
            </a>
          </div>

        {% endif %}

      </div>

      <script type="text/javascript">
        document.getElementById('btn_donate').onclick = function(){
          $('#donate_board').addClass('hidden');
          $('#donate_guide').removeClass('hidden');
        }
      </script>
    </div>

  {% endif%}
{% endif %}
