    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Fiscal Year", "Dollar Amount", { role: "style" } ],
        ["FY04", 696, "#0B4C92"],
        ["FY05", 755, "#0B4C92"],
        ["FY06", 853, "#0B4C92"],
        ["FY07", 1072, "#0B4C92"],
        ["FY08", 1065, "#0B4C92"],
        ["FY09", 895, "0B4C92"],
        ["FY10", 1010, "#0B4C92"],
        ["FY11", 1160, "#0B4C92"],
        ["FY12", 1142, "#0B4C92"],
        ["FY13", 1286, "#0B4C92"],
        ["FY14", 1461, "#0B4C92"],
        ["FY15", 1529, "#0B4C92"],
        ["FY16", 1484, "#0B4C92"],
        ["FY17", 1662, "#0B4C92"],
        ["FY18", 1769, "#0B4C92"],
        ["FY19", 1822, "#0B4C92"]

      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
         animation: {
            duration: 1000,
            easing: 'linear'
        },

        annotations: {
          stem: {
            color: 'transparent',
            length: 0
          },
          style: 'point',
          textStyle: {
            fontSize: 13,
            fontName: "'futura-pt', Arial, sans-serif",
            bold: true,
            // The color of the text.
            color: '#0B4C92',
            // The color of the text outline.
            auraColor: '#fff'
          },
        },
        tooltip: { textStyle: { fontName: "'futura-pt', Arial, sans-serif" } },
        bar: {groupWidth: "70%"},
        legend: { position: "none",
                  textStyle: {fontName: "'futura-pt', Arial, sans-serif"},
        },
        vAxis: {minValue: 0, 
                format: '###,###', 
                ticks: [0, 200, 400, 600, 800, 1000, 1200, 1400, 1600, 1800, 2000],
                gridlines: { color: '#BBB9BA' },
                baselineColor: '#BBB9BA',
                textStyle: { color: '#BBB9BA' , fontSize: 11},

               },
        hAxis: {textStyle: { color: '#BBB9BA' , fontSize: 11},
                baselineColor: '#BBB9BA',
               }

      };
      var formatter = new google.visualization.NumberFormat(
        {pattern: '$###,###.#'});
      formatter.format(data, 1);       
    
      var container = document.getElementById('columnchart_vertical_annotation');
      var chart = new google.visualization.ColumnChart(container);
      
      chart.draw(view, options);
      
      // move annotations
//       var observer = new MutationObserver(function () {
//         Array.prototype.forEach.call(container.getElementsByTagName('text'), function(annotation) {
//           console.log(annotation.getAttribute('hover'));
//           if ((annotation.getAttribute('text-anchor') === 'middle') &&
//               (annotation.getAttribute('fill') === '#ffffff')) {
//             // var chartLayout = chart.getChartLayoutInterface();
//             annotation.setAttribute('y', annotation.getAttribute('y') - 4);
//             annotation.setAttribute('x', annotation.getAttribute('x') - 13);
//           }
//         });
//       });
      
//       observer.observe(container, {
//         childList: true,
//         subtree: true
//       });
      
  }
