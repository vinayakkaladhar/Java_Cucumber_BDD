package Utilities;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.RemoteWebDriver;
import ru.yandex.qatools.ashot.AShot;
import ru.yandex.qatools.ashot.Screenshot;

import javax.imageio.ImageIO;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;

public class Utilities {
    public static WebDriver driver;

    public static WebDriver getDriver(){
        System.setProperty("webdriver.chrome.driver","/Users/cb-vinayak/work/selenium/src/main/resources/chromedriver");
        if(driver == null){
            ChromeOptions chromeOptions = new ChromeOptions();
            try {
                //driver = new RemoteWebDriver(new URL("http://localhost:4444/wd/hub"), chromeOptions);
                //driver.manage().window().maximize();
                driver = new ChromeDriver();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
return driver;
    }

    public static void takeSnapShot(WebDriver driver,String fileWithPath) throws Exception{

        //Convert web driver object to TakeScreenshot

        Screenshot screenshot = new AShot().takeScreenshot(driver);
        ImageIO.write(screenshot.getImage(), "jpg", new File(fileWithPath));

    }

    public static void readEXcel(WebDriver driver,String fileWithPath) throws Exception{
        XSSFWorkbook guru99Workbook = new XSSFWorkbook("");
        Sheet guru99Sheet = guru99Workbook.getSheetAt(0);
        int rowCount = guru99Sheet.getLastRowNum()-guru99Sheet.getFirstRowNum();

        for (int i=0;i<rowCount+1;i++){
            Row row = guru99Sheet.getRow(i);
            for(int j=0;j<row.getLastCellNum();j++)
                System.out.print(row.getCell(j).getStringCellValue()+"|| ");
        }
        System.out.println();

    }


}
