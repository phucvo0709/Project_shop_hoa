$(document).ready(function(){
  $.ajax({
    url:"doanh_thu_theo_thang.php",
    method:"GET",
    success:function(data){
      var thang=[];
      var tong_tt=[];
      var obj=jQuery.parseJSON(data);
      for(var i in obj){
        thang.push('Tháng '+obj[i].thang);
        tong_tt.push(obj[i].tong_tt);
      };
      var chardata={
        labels:thang,
        datasets:[
          {
            label:"tổng thành tiền",
            data:tong_tt,
            lineTension: .3,
            backgroundColor: "rgba(2,117,216,0.2)",
            borderColor: "rgba(2,117,216,1)",
            pointRadius: 5,
            pointBackgroundColor: "rgba(2,117,216,1)",
            pointBorderColor: "rgba(255,255,255,0.8)",
            pointHoverRadius: 5,
            pointHoverBackgroundColor: "rgba(2,117,216,1)",
            pointHitRadius: 20,
            pointBorderWidth: 2
          }
        ]
      };

      var ctx=$('#myBarChartTheoThang');
      var barGraph=new Chart(ctx,{
        type:'line',
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
