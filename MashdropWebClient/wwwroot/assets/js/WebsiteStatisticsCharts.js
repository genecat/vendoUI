var WebsiteStatisticsCharts = {

    OpenMondayToFriday: function (m_v, t_v, w_v, th_v, f_v, s_v, sn_v) {
        //CHART 1

        var ctx = document.getElementById('mondaytofriday_chart').getContext('2d');
        ctx.canvas.width = 250;
        ctx.canvas.height = 210;
        var chart1 = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
                datasets: [{
                    label: 'Clicks',
                    data: [m_v, t_v, w_v, th_v, f_v, s_v, sn_v],
                    backgroundColor: [
                        '#23AF47',
                        '#23AF47',
                        '#23AF47',
                        '#23AF47',
                        '#23AF47',
                        '#23AF47',
                        '#23AF47'
                    ],
                    borderColor: [
                        '#23AF47',
                        '#23AF47',
                        '#23AF47',
                        '#23AF47',
                        '#23AF47',
                        '#23AF47',
                        '#23AF47'
                    ],
                    borderWidth: 1
                }]
            },

            options: {
                
                legend: {
                    display: false
                },
                tooltips: {
                    callbacks: {
                        label: function (tooltipItem) {
                            return tooltipItem.yLabel;
                        }
                    }
                }
            }
        });
    }

};