package com.example.java_project;
import tech.tablesaw.api.Table;
import tech.tablesaw.plotly.Plot;
import tech.tablesaw.plotly.api.PiePlot;
import tech.tablesaw.plotly.api.VerticalBarPlot;
import tech.tablesaw.plotly.components.Figure;

import java.io.IOException;

public class WazzufDao {

    Table WuzzufDataSet;

    public WazzufDao(){   }

    ///  Load Data From CSV File
    public Table loadDataFromCSV(String path) throws IOException {
        Table WuzzufData = Table.read ().csv (path);
        return WuzzufData;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// structure of the data
    //1
    public String getDataInfoStructure(Table data) {
        Table dataStructure = data.structure ();
        return dataStructure.toString();

    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Data Summary
    //2
    public String getDataSummary(Table data) {

        return data.summary().toString();
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Show Data
    //
    public String printData(Table data){


        return data.first(10).toString();
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Number of Drop Duplicate
    //3
//////gggggg
    public int dropDuplicate(Table data){
        int rowBefore  = data.rowCount();
        data= data.dropDuplicateRows();
        int rowAfter = data.rowCount();
        int res = rowBefore - rowAfter;
        return res;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Count Job
    //4
    ///llllll
    public Table jobCountInEachCompany(Table data){
        Table cnt = data.countBy("Company").sortDescendingOn("Count").first(10);
        return cnt;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Count Job pie chart
    //5
    public Figure plotJobCountInEachCompany(Table data, String path){
        return (PiePlot.create("jobs for each company", // plot title
                data // table
                ,"Category", "Count"));
    }
//other function:
//public String plotJobCountInEachCompany(Table data,String path){
//    System.out.println("\n______________jobCountInEachCompany______________\n");
//    String javascript =PiePlot.create("jobs for each company", // plot title
//            data // table
//            ,"Category", "Count").asJavascript(path);
//    return javascript;
//}

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Most it Job
    //6
    public Table mostITjobs(Table data){
        Table jobs = data.where(data.stringColumn("Skills").containsString("IT"));
        return jobs.countBy("Title").sortOn(1).last(15);
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Most it Job
    //7
    public String plotMostITjobs(Table data,String path){
        System.out.println("\n______________Most IT Jobs______________\n");
        String javascript = VerticalBarPlot.create("Most IT popular job titles" //title
                ,data, "Category","Count").asJavascript(path);
        return javascript;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Most Popular Area
    //8
    public Table mostPopArea(Table data){
        Table mostArea = data.countBy(data.stringColumn("Location")).sortOn(1).last(15);
        return mostArea;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Most Popular Area
    //9
    public String plotMostPopArea(Table data,String path){
        System.out.println("\n______________Most Popular Area___________\n");
        String javascript = VerticalBarPlot.create("Most popular areas" //title
                ,data, "Category","Count").asJavascript(path);
        return javascript;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //Print skills one by one and how many each repeated and order the output to find out the most important skills required?
    //10











    // XChart


}
