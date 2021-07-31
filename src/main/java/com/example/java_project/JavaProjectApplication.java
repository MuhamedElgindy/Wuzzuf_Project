package com.example.java_project;



import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import tech.tablesaw.api.Table;
import tech.tablesaw.plotly.components.Figure;

import java.io.IOException;

@SpringBootApplication

public class JavaProjectApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(JavaProjectApplication.class);
    }

    public static void main(String[] args) throws IOException {
        SpringApplication.run(JavaProjectApplication.class, args);


        Table WuzzufData;
        WazzufDao wd = new WazzufDao();
        String path = "D:\\ITI Material\\java_prject\\Wuzzuf_Jobs.csv";
        WuzzufData = wd.loadDataFromCSV(path);


      String dataStructure = wd.getDataInfoStructure(WuzzufData);
        System.out.println(dataStructure);
        String summary = wd.getDataSummary(WuzzufData);
        System.out.println(summary);
        wd.printData(WuzzufData);

        int rec =wd.dropDuplicate(WuzzufData); // 3
        System.out.println(rec);
        Table companyJobs=wd.jobCountInEachCompany(WuzzufData); // 4
        System.out.println(companyJobs);

        Figure fig = wd.plotJobCountInEachCompany(companyJobs, path); //5

        System.out.println(fig);

        Table itJobs = wd.mostITjobs(WuzzufData); // 6
        String javeScript2 = wd.plotMostITjobs(itJobs, path); //7
        System.out.println(javeScript2);

        Table areas = wd.mostPopArea(WuzzufData); // 8
        String javeScript3 = wd.plotMostPopArea(areas, path); //9
        System.out.println(javeScript3);
    }

}

