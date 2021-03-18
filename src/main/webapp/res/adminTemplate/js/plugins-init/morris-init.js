// Dashboard 1 Morris-chart
$(function () {
    "use strict";

    var today = new Date();
    alert(ratingRatio[30].period)


    // LINE CHART
    var line = new Morris.Line({
        element: 'morris-line-chart',
        resize: true,
        data: [
            {
                y: '2011 Q1',
                item1: 2666
            },
            {
                y: '2011 Q2',
                item1: 2778
            },
            {
                y: '2011 Q3',
                item1: 4912
            },
            {
                y: '2011 Q4',
                item1: 3767
            },
            {
                y: '2012 Q1',
                item1: 6810
            },
            {
                y: '2012 Q2',
                item1: 5670
            },
            {
                y: '2012 Q3',
                item1: 4820
            },
            {
                y: '2012 Q4',
                item1: 15073
            },
            {
                y: '2013 Q1',
                item1: 10687
            },
            {
                y: '2013 Q2',
                item1: 8432
            }
        ],
        xkey: 'y',
        ykeys: ['item1'],
        labels: ['Item 1'],
        gridLineColor: 'transparent',
        lineColors: ['#4d7cff'],
        lineWidth: 1,
        hideHover: 'auto',
    });
    // Morris bar chart
    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            period: ratingRatio[0].period,
            point1: ratingRatio[0].count,
            point2: ratingRatio[1].count,
            point3: ratingRatio[2].count,
            point4: ratingRatio[3].count,
            point5: ratingRatio[4].count
        }, {
            period: ratingRatio[5].period,
            point1: ratingRatio[5].count,
            point2: ratingRatio[6].count,
            point3: ratingRatio[7].count,
            point4: ratingRatio[8].count,
            point5: ratingRatio[9].count
        }, {
            period: ratingRatio[10].period,
            point1: ratingRatio[10].count,
            point2: ratingRatio[11].count,
            point3: ratingRatio[12].count,
            point4: ratingRatio[13].count,
            point5: ratingRatio[14].count
        }, {
            period: ratingRatio[15].period,
            point1: ratingRatio[15].count,
            point2: ratingRatio[16].count,
            point3: ratingRatio[17].count,
            point4: ratingRatio[18].count,
            point5: ratingRatio[19].count
        }, {
            period: ratingRatio[20].period,
            point1: ratingRatio[20].count,
            point2: ratingRatio[21].count,
            point3: ratingRatio[22].count,
            point4: ratingRatio[23].count,
            point5: ratingRatio[24].count
        }, {
            period: ratingRatio[25].period,
            point1: ratingRatio[25].count,
            point2: ratingRatio[26].count,
            point3: ratingRatio[27].count,
            point4: ratingRatio[28].count,
            point5: ratingRatio[29].count
        }, {
            period: ratingRatio[30].period,
            point1: ratingRatio[30].count,
            point2: ratingRatio[31].count,
            point3: ratingRatio[32].count,
            point4: ratingRatio[33].count,
            point5: ratingRatio[34].count
        }


        ],
        xkey: 'period',
        ykeys: ['point1', 'point2', 'point3','point4','point5'],
        labels: ['point1', 'point2', 'point3','point4','point5'],
        barColors: ['#7571F9', '#9097c4', '#4d7cff','#FF8000','#DF01D7'],
        hideHover: 'auto',
        gridLineColor: 'transparent',
        resize: true
    });
    // Morris donut chart

    Morris.Donut({
        element: 'morris-donut-chart2',
        data: [{
            label: addrRatio[0].subject,
            value: addrRatio[0].count

        }, {
            label: addrRatio[1].subject,
            value: addrRatio[1].count
        }, {
            label: addrRatio[2].subject,
            value: addrRatio[2].count
        },{
            label: addrRatio[3].subject,
            value: addrRatio[3].count

        },{
            label: addrRatio[4].subject,
            value: addrRatio[4].count

        }],
        resize: true,
        colors: ['#4d7cff', '#7571F9', '#9097c4','#58FAAC','#FACC2E']
    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: originRatio2[0].y,
            value: originRatio2[0].item1

        }, {
            label: originRatio2[1].y,
            value: originRatio2[1].item1
        }, {
            label: originRatio2[2].y,
            value: originRatio2[2].item1
        },{
            label: originRatio2[3].y,
            value: originRatio2[3].item1

        }],
        resize: true,
        colors: ['#4d7cff', '#7571F9', '#9097c4','#58FAAC']
    });


    // Extra chart
    Morris.Area({
        element: 'extra-area-chart',
        data: [{
            time: timeRatio[0].period,
            review: timeRatio[0].count,
        }, {
            time: timeRatio[1].period,
            review: timeRatio[1].count,
        }, {
            time: timeRatio[2].period,
            review: timeRatio[2].count,
        }, {
            time: timeRatio[3].period,
            review: timeRatio[3].count,
        }, {
            time: timeRatio[4].period,
            review: timeRatio[4].count,
        }, {
            time: timeRatio[5].period,
            review: timeRatio[5].count,
        }, {
            time: timeRatio[6].period,
            review: timeRatio[6].count,
        }, {
            time: timeRatio[7].period,
            review: timeRatio[7].count,
        }, {
            time: timeRatio[8].period,
            review: timeRatio[8].count,
        }, {
            time: timeRatio[9].period,
            review: timeRatio[9].count,
        }, {
            time: timeRatio[10].period,
            review: timeRatio[10].count,
        }, {
            time: timeRatio[6].period,
            review: timeRatio[11].count,
        }, {
            time: timeRatio[12].period,
            review: timeRatio[12].count,
        }, {
            time: timeRatio[13].period,
            review: timeRatio[13].count,
        }, {
            time: timeRatio[14].period,
            review: timeRatio[14].count,
        }, {
            time: timeRatio[15].period,
            review: timeRatio[15].count,
        }, {
            time: timeRatio[16].period,
            review: timeRatio[16].count,
        }, {
            time: timeRatio[17].period,
            review: timeRatio[17].count,
        }, {
            time: timeRatio[18].period,
            review: timeRatio[18].count,
        }, {
            time: timeRatio[19].period,
            review: timeRatio[19].count,
        }, {
            time: timeRatio[20].period,
            review: timeRatio[20].count,
        }, {
            time: timeRatio[21].period,
            review: timeRatio[21].count,
        }, {
            time: timeRatio[22].period,
            review: timeRatio[22].count,
        }, {
            time: timeRatio[23].period,
            review: timeRatio[23].count,
        }

        ],
        lineColors: ['#FA58D0'],
        xkey: 'time',
        ykeys: ['review'],
        labels: ['시간대별 리뷰수'],
        pointSize: 0,
        parseTime: false,
        lineWidth: 0,
        resize: true,
        fillOpacity: 0.8,
        behaveLikeLine: true,
        gridLineColor: 'transparent',
        hideHover: 'auto'

    });
    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2001',
            smartphone: 0,
            windows: 0,
            mac: 0
        }, {
            period: '2002',
            smartphone: 90,
            windows: 60,
            mac: 25
        }, {
            period: '2003',
            smartphone: 40,
            windows: 80,
            mac: 35
        }, {
            period: '2004',
            smartphone: 30,
            windows: 47,
            mac: 17
        }, {
            period: '2005',
            smartphone: 150,
            windows: 40,
            mac: 120
        }, {
            period: '2006',
            smartphone: 25,
            windows: 80,
            mac: 40
        }, {
            period: '2007',
            smartphone: 10,
            windows: 10,
            mac: 10
        }


        ],
        xkey: 'period',
        ykeys: ['smartphone', 'windows', 'mac'],
        labels: ['Phone', 'Windows', 'Mac'],
        pointSize: 3,
        fillOpacity: 0,
        pointStrokeColors: ['#7571F9', '#4d7cff', '#9097c4'],
        behaveLikeLine: true,
        gridLineColor: 'transparent',
        lineWidth: 3,
        hideHover: 'auto',
        lineColors: ['#7571F9', '#4d7cff', '#9097c4'],
        resize: true

    });

    Morris.Area({
        element: 'morris-area-chart0',
        data: [{
            period: '2010',
            SiteA: 0,
            SiteB: 0,

        }, {
            period: '2011',
            SiteA: 130,
            SiteB: 100,

        }, {
            period: '2012',
            SiteA: 80,
            SiteB: 60,

        }, {
            period: '2013',
            SiteA: 70,
            SiteB: 200,

        }, {
            period: '2014',
            SiteA: 180,
            SiteB: 150,

        }, {
            period: '2015',
            SiteA: 105,
            SiteB: 90,

        },
        {
            period: '2016',
            SiteA: 250,
            SiteB: 150,

        }],
        xkey: 'period',
        ykeys: ['SiteA', 'SiteB'],
        labels: ['Site A', 'Site B'],
        pointSize: 0,
        fillOpacity: 0.4,
        pointStrokeColors: ['#b4becb', '#4d7cff'],
        behaveLikeLine: true,
        gridLineColor: 'transparent',
        lineWidth: 0,
        smooth: false,
        hideHover: 'auto',
        lineColors: ['#b4becb', '#4d7cff'],
        resize: true

    });
    


});
