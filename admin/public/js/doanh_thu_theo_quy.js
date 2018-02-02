$(document).ready(function(){
  $.ajax({
    url:"doanh_thu_theo_quy.php",
    method:"GET",
    success:function(data){
      var quy=[];
      var tong_tt=[];
      var obj=jQuery.parseJSON(data);
      for(var i in obj){
        quy.push('Quý '+obj[i].quy);
        tong_tt.push(obj[i].tong_tt);
      };
      var chardata={
        labels:quy,
        datasets:[
          {
            label:"tổng thành tiền",
            data:tong_tt,
            backgroundColor:"rgba(2,117,216,1)",
            borderColor:"rgba(2,117,216,1)"
          }
        ]
      };

      var ctx=$('#myBarChartTheoQuy');
      var barGraph=new Chart(ctx,{
        type:'bar',
        data:chardata,
        options: {
          tooltips: {
           mode: 'label',
           label: 'mylabel',
           callbacks: {
               label: function(tooltipItem, data) {
                   return tooltipItem.yLabel.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","); }, },
        },

            scales: {
                yAxes: [{
                    ticks: {
                        callback: function (tong_tt) {
                            return accounting.formatNumber(tong_tt);
                        }
                    }
                }]
            },
            legend:{display:!1}
          }
      });
    },
    error:function(data){
        console.log(data);
    }
  })
});
