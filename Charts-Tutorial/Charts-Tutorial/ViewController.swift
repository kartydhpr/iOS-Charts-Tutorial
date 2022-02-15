//
//  ViewController.swift
//  Charts-Tutorial
//
//  Created by Karteikay Dhuper on 2/15/22.
//

import UIKit
import Charts

class ViewController: UIViewController {
    @IBOutlet weak var lineChartView: LineChartView!
    @IBOutlet weak var pieChartView: PieChartView!
    @IBOutlet weak var barChartView: BarChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let data = [3,1,4,1,5,9,2,6,5]
        graphLineChart(dataArray: data)
        graphPieChart(dataArray: data)
        graphBarChart(dataArray: data)
    
    }
    
    func graphLineChart(dataArray: [Int])
    {
        lineChartView.frame = CGRect(x:0, y:0,
                                    width: self.view.frame.size.width,
                                    height:self.view.frame.size.width/2)
        
        lineChartView.center.x = self.view.center.x
        lineChartView.center.y = self.view.center.y - 240
        
        // settings when chart has no data
        lineChartView.noDataText = "No data available"
        lineChartView.noDataTextColor = UIColor.black
        
        // initialize array that will be displayed on the graph
        var entries = [ChartDataEntry]()
        
        //For every element in a given data set
        //Set

        for i in 0...dataArray.count-1
        {
            let value = ChartDataEntry(x: Double(i), y:Double(dataArray[i]) )
            entries.append(value)
        }
        
        // use the entries object and a label string to make a LineChartDataSet object
        let dataSet = LineChartDataSet(entries: entries, label: "Line Chart")

        dataSet.setCircleColor(UIColor.green)
        dataSet.valueFont = UIFont(name: "Arial", size: 15)!
        
        // customize graph settings to your liking
        dataSet.colors = ChartColorTemplates.colorful()
        
        // make objects that will be added to the chart
        // and set it to the variable in the Storyboard
        let data = LineChartData(dataSet: dataSet)
        lineChartView.data = data
        
    }

    func graphPieChart(dataArray: [Int])
    {
        pieChartView.frame = CGRect(x:0, y:0,
                                    width: self.view.frame.size.width,
                                    height:self.view.frame.size.width/2)
        
        pieChartView.center.x = self.view.center.x
        pieChartView.center.y = self.view.center.y
        // settings when chart has no data
        pieChartView.noDataText = "No data available"
        pieChartView.noDataTextColor = UIColor.black
        
        // initialize array that will be displayed on the graph
        var entries = [ChartDataEntry]()
        
        //For every element in a given data set
        //Set

        for i in 0...dataArray.count-1
        {
            let value = ChartDataEntry(x: Double(i), y:Double(dataArray[i]) )
            entries.append(value)
        }
        
        // use the entries object and a label string to make a LineChartDataSet object
        let dataSet = PieChartDataSet(entries: entries, label: "Pie Chart")

        dataSet.valueFont = UIFont(name: "Arial", size: 15)!
        
        // customize graph settings to your liking
        dataSet.colors = ChartColorTemplates.colorful()
        
        // make objects that will be added to the chart
        // and set it to the variable in the Storyboard
        let data = PieChartData(dataSet: dataSet)
        pieChartView.data = data
        
    }

    func graphBarChart(dataArray: [Int])
    {
        barChartView.frame = CGRect(x:0, y:0,
                                    width: self.view.frame.size.width,
                                    height:self.view.frame.size.width/2)
        
        barChartView.center.x = self.view.center.x
        barChartView.center.y = self.view.center.y + 240
        
        // settings when chart has no data
        barChartView.noDataText = "No data available"
        barChartView.noDataTextColor = UIColor.black
        
        // initialize array that will be displayed on the graph
        var entries = [BarChartDataEntry]()
        
        // for every element in a given data set
        // set the x and y coordinates in a data chart entry
        // and at to the entries list

        for i in 0...dataArray.count-1
        {
            let value = BarChartDataEntry(x: Double(i), y:Double(dataArray[i]) )
            entries.append(value)
        }
        
        // use the entries object and a label string to make a LineChartDataSet object
        let dataSet = BarChartDataSet(entries: entries, label: "Bar Chart")

        dataSet.valueFont = UIFont(name: "Arial", size: 15)!
        
        // customize graph settings to your liking
        dataSet.colors = ChartColorTemplates.colorful()
        
        // make objects that will be added to the chart
        // and set it to the variable in the Storyboard
        let data = BarChartData(dataSet: dataSet)
        barChartView.data = data
        
    }


}

