$(document).ready(function() {
    placeImages();
});

function placeImages() {
    $.ajax({
        dataType: "json",
        type: "GET",
        url: "http://cctv-scm.noip.me:8081/keepi/getimages.action",
        success: function (data){
            var a = JSON.parse(JSON.stringify(data));
            imgs = a["list"];
            for (i = 0; i < imgs.length; i++) {

                baseUrl='http://cctv-scm.noip.me/92jFBTrivWGB3gkd828403FBJenvbwbncbvs2/'
                $(".row").append('<div class="col-lg-3 col-md-4 col-xs-6 thumb"><a class="thumbnail" href="'+baseUrl+imgs[i]+'" data-gallery><img class="img-responsive" src="'+baseUrl+imgs[i]+'" alt=""></a></div>');

            }
        }
    });
}