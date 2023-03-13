const labels = ["NOV. 2022", "DEC. 2022", "JAN. 2023", "FEV. 2023", "MAR. 2023", "AVR. 2023"];
const data = {
  labels: labels,
  datasets: [
    {
      label : "IMC",
      data: [176.0, 176.0, 177.0, 180.0, 181.0, 182.0],
      fill: false,
      borderColor: "rgb(0, 205, 0)",
      tension: 0.1,
      pointBackgroundColor : "black",
      pointBorderColor : "rgb(0, 205, 0)",
    },
  ],
};
const options = {
  plugins: {
    legend : {
      display : false  
    },
    datalabels: {
      display: true,
      align: "top",
      formatter: (value) => value,
      font: {
        size: 17
      }
    },
  },
  scales: {
    y: {
      ticks: {
        display: false,
      },
    },    
    x: {
      title: {
        display: true,
        text: "IMC",
        padding: { bottom: 10 },
        font: {
            size: 20
          }
      },
      
    },
    title : {
        display : false
    }
  },
};
const chart = new Chart("myChart", {
  type: "line",
  data: data,
  options: options,
  plugins: [ChartDataLabels],
});
