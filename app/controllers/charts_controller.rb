class ChartsController < ApplicationController
  def graduate
  end

  def graduated
    # render json: Examinee.group(:graduated).count
    result = [[t("chart.graduate"), Examinee.all.where(graduated: true).count],
    [t("chart.not_graduate"), Examinee.all.where(graduated: false).count]]
    render json: result
  end

  def graduate_score
    render json: Examinee.group(:graduate_score).count
  end

  def home_town
    render json: Examinee.group(:home_town).count
  end

  def math
    render json: Examinee.joins(:result).group(:math).count
  end

  def literature
    render json: Examinee.joins(:result).group(:literature).count
  end

    def english
    render json: Examinee.joins(:result).group(:english).count
  end

    def physical
    render json: Examinee.joins(:result).group(:physical).count
  end

  def chemistry
    render json: Examinee.joins(:result).group(:chemistry).count
  end

  def biological
    render json: Examinee.joins(:result).group(:biological).count
  end

  def history
    render json: Examinee.joins(:result).group(:history).count
  end

  def geography
    render json: Examinee.joins(:result).group(:geography).count
  end

  def by_graduated
    @chart = Fusioncharts::Chart.new({
        width: "100%",
        height: "70%",
        type: "pie2d",
        renderAt: "chartContainer",
        dataFormat: 'json',
        dataSource: {
          chart: {
            theme: "fint",
            numberPrefix: t("chart.examinee"),
            valueBorderColor: "#666666",
            valueBorderAlpha: "100",
            valueBorderPadding: "5",
            valueBorderRadius: "6",
            valueBorderThickness: "0.5",
            valueBorderDashed: "1",
            valueBorderDashLen: "4",
            valueBorderDashGap: "2",
            valueFontSize: "15"
        },
        data: [{
            label: t("chart.graduate"),
            color: "008ee4",
            value: Examinee.all.where(graduated: true).count
            },{
            label: t("chart.not_graduate"),
            color: "f8bd19",
            value: Examinee.all.where(graduated: false).count
        }]
    }
    })
  end

  def by_home_town
    @categories = []
    @graduated_value = []
    @not_graduated_value = []
    Settings.tinh.each { |record| @categories << {'label' => record} }
    Settings.tinh.each { |record| @graduated_value << {'value' =>
      (Examinee.where(graduated: true).group(:home_town).count[record])} }
    Settings.tinh.each { |record| @not_graduated_value << {'value' =>
      (Examinee.where(graduated: false).group(:home_town).count[record])} }
    @chart = Fusioncharts::Chart.new({
      type: 'scrollstackedcolumn2d',
      dataFormat: 'json',
      renderAt: 'chartContainer',
      width: '100%',
      height: '500',
      dataFormat: 'json',
      dataSource: {
        chart: {
          subCaptio: "Năm 2016",
          captionFontSize: "30",
          subcaptionFontSize: "20",
          subcaptionFontBold: "0",
          xaxisname: "Tỉnh/ Thành phố",
          yaxisname: "Thí sinh",
          showvalues: "1",
          numberprefix: "",
          legendBgAlpha: "0",
          legendBorderAlpha: "0",
          legendShadow: "0",
          showborder: "0",
          bgcolor: "#ffffff",
          showalternatehgridcolor: "0",
          showplotborder: "0",
          showcanvasborder: "0",
          legendshadow: "0",
          plotgradientcolor: "",
          showCanvasBorder: "1",
          showAxisLines: "1",
          showAlternateHGridColor: "0",
          divlineAlpha: "100",
          divlineThickness: "1",
          divLineIsDashed: "1",
          divLineDashLen: "1",
          divLineGapLen: "1",
          lineThickness: "3",
          flatScrollBars: "1",
          scrollheight: "10",
          numVisiblePlot: "25",
          showHoverEffect:"1"
          },
        categories: [{
          category: @categories
          }],
        dataset: [
          {
            seriesname: t("chart.graduate"),
            color: "008ee4",
            data: @graduated_value
          },
          {
            seriesname: t("chart.not_graduate"),
            color: "f8bd19",
            data: @not_graduated_value
          }
        ]
      }
    })
  end

  def by_graduate_score
  end

  def by_exam_score
  end
end
