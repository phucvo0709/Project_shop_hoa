$(document).ready(function(){
  $.ajax({
    url:"doanh_thu_theo_tuan.php",
    method:"GET",
    success:function(data){
      var ngay_trong_tuan=[];
      var tong_tt=[];
      var obj=jQuery.parseJSON(data);
      for(var i in obj){
        ngay_trong_tuan.push(obj[i].ngay_trong_tuan);
        tong_tt.push(obj[i].tongtt);
      };
      var chardata={
        labels:ngay_trong_tuan,
        datasets:[
          {
            label:"tổng số tiền",
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

      var ctx=$('#myBarChart');
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
    }
  })
});
