$(document).ready(function(){
    $("#search-mobile").keyup(function(){
        var tenHoa = $(this).val();
        console.log(tenHoa)
        if(tenHoa.length < 4){
            $("div#result-tenHoa-mobile").css("display","none")
            $("#result-tenHoa-mobile").html('');
            return;
        }
        if(tenHoa.length >= 4){
            $.post("models/ajax_tim_hoa.php", {tenHoa:tenHoa}, function(data){
                    if(tenHoa != ""){
                        $("div#result-tenHoa-mobile").css("display","block")
                        $("#result-tenHoa-mobile").html(data)
                    }else{
                        $("div#result-tenHoa-mobile").css("display","none")
                    }
            });
        }
    });
});
