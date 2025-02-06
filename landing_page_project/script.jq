(function(d) {
  var config = {
    kitId: 'qjk0esi',
    scriptTimeout: 3000,
    async: true
  },
  h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='https://use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
})(document);

  (function(d) {
    var config = {
      kitId: 'qjk0esi',
      scriptTimeout: 3000,
      async: true
    },
    h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='https://use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
  })(document);



$(document).ready(function () {
  // 画像と対応する文字のリスト
  const contentList = [
    {
      image: "images_/namuka,nol.png",
      text: "びふぉー!",
    },
    {
      image: "images_/manuka,ks.png",
      text: "あふたー!",
    },
  ];

  let isHovered = false; // ホバー状態のトラッキング

  $("#fade-image").hover(
    function () {
      if (!isHovered) {
        isHovered = true;

        // 画像を切り替え
        $("#fade-image").css("transition", "opacity 0.2s ease").fadeTo(200, 0.5, function () {
          $(this).attr("src", contentList[1].image).fadeTo(200, 1);
        });

        // テキストを切り替え
        $("#Exp4")
          .fadeTo(200, 0.2, function () {
            $(this).text(contentList[1].text).fadeTo(200, 1);
          });
      }
    },
    function () {
      if (isHovered) {
        isHovered = false;

        // 画像を元に戻す
        $("#fade-image").css("transition", "opacity 0.2s ease").fadeTo(200, 0.5, function () {
          $(this).attr("src", contentList[0].image).fadeTo(200, 1);
        });

        // テキストを元に戻す
        $("#Exp4")
          .fadeTo(200, 0.2, function () {
            $(this).text(contentList[0].text).fadeTo(200, 1);
          });
      }
    }
  );
});

