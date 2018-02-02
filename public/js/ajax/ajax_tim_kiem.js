
$(document).ready(function(){
    $("#search").keyup(function(){
        var tenHoa = $(this).val();
        // if($(this).val() == ""){
        //     $("#hien-thi-tim-kiem").css("display","none");
        // }else{
            
        // }
        if(tenHoa.length < 4){
            $("div#result-tenHoa").css("display","none")
            $("#result-tenHoa").html('');
            return;
        }
        if(tenHoa.length >= 4){
            $.post("models/ajax_tim_hoa.php", {tenHoa:tenHoa}, function(data){
                    if(tenHoa != ""){
                        $("div#result-tenHoa").css("display","block")
                        $("#result-tenHoa").html(data)
                    }else{
                        $("div#result-tenHoa").css("display","none")
                    }
            });
        }
    });
});
