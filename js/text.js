var w2 = 700, h2 = 300, padding = 10;
        var dataset = [5, 10, 13, 19, 21, 25, 22, 18, 15, 13,
                        11, 12, 15, 20, 18, 17, 16, 18, 23, 25];
        var svg2 = d3.select('body').append('svg')
                    .attr('width', w2)
                    .attr('height', h2);
        //append에 svg를 써야 svg를 body안에 사용할것을 의미, attr은 svg객체의 가로 세로 크기를 뜻함
 
        //attr메서드의 속성들을 객체로 묶어서 할것ㅇ임, 간결하다(오류생김 나중에 수정할것!!)
        svg2.selectAll('rect').data(dataset)
            .enter().append('rect')
            .attr("x", function (d, i) {
                return i * (w2 / dataset.length);
            }) // 차트를 만들기위한 x좌표 이동
            .attr("y", function (d) {
                return h2 - (d*4); //높이에서 데이터를 빼야 SVG하단에 막대의 하단이 놓임, d값을 변형했으면 변형한 만큼 
            }).attr("width", w2 / dataset.length - padding) // 각 막대사이의 간격
            .attr("height", function (d) {
                return d*4; //짧기때문에 4를 곱함
            })
            .attr('fill',function(d){
                return 'rgb(10,100,'+(d*10) +')' //값이 클수록 밝은색상이 나오도록 조정
            });
   
        //라벨
        svg2.selectAll('text').data(dataset)
            .enter().append('text')
            .text(function (d) {
                return d;
            })
            .attr("text-anchor",'middle') // 할당된 x값에 가로로 중앙 정렬을 하는 속성
            .attr('x', function (d, i) {
                return i * (w2 / dataset.length) + (w/dataset.length-padding)/2; //텍스트 정렬을 위함
            })
            .attr('y', function (d) {
                return h2 - (d * 4) + 14;
            })
            .attr('font-family', 'scans-serif')
            .attr('font-size', '11px')
            .attr('fill', 'white');    // 텍스트 속성을 추가, 크기,색상,폰트