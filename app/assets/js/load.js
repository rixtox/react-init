function loadCss(url) {
  var link = document.createElement("link");
  link.type = "text/css";
  link.rel = "stylesheet";
  link.href = url;
  document.getElementsByTagName("head")[0].appendChild(link);
}

requirejs.config({
  baseUrl: '<%= basePath %>',
  paths: {
    'jQuery': [
      '//code.jquery.com/jquery-2.1.4.min',
      '//g.4gwz.com/libs/jquery/jquery-2.1.4.min',
      '//libs.ikay.me/libs/jquery/2.1.1/jquery.min',
      '//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min',
      '//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min',
      'assets/vendor/jquery.min'
    ],
    'jQuery.ui': [
      '//code.jquery.com/ui/1.11.4/jquery-ui.min',
      '//libs.ikay.me/libs/jqueryui/1.10.4/jquery-ui.min',
      '//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min',
      '//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min',
      'assets/vendor/jquery-ui.min'
    ],
    'app': 'assets/js/app'
  },
  shim: {
    'jQuery.ui': ['jQuery']
  }
});

<% _.each(css(), function(p) { %>loadCss('<%= p %>');
<% }); %>
requirejs(['jQuery', 'jQuery.ui'], function() {
  requirejs(['app']);
});
