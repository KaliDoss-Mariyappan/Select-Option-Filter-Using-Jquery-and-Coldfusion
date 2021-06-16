$(document).ready(function(){
    $("#brandSelect").on("change", function() {
        var brandId = $(this).val();
        if(brandId == '') {
            $(".productContent").show();
        }else {
            $(".productContent").hide();
            $(`.productContent[data-id=${brandId}]`).show();
        }
    });
});