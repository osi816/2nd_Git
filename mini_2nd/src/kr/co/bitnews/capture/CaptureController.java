package kr.co.bitnews.capture;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.Point;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;


@WebServlet("/capture")
public class CaptureController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("webdriver.chrome.driver", new File("C:\\java-lec\\2nd_git\\mini_2nd\\chrome\\chromedriver.exe").getAbsolutePath()); //크롬 드라이버 파일 경로설정

		ChromeOptions options = new ChromeOptions();
		options.addArguments("--start-maximized");
		WebDriver driver = new ChromeDriver(options);
		
		driver.get("http://newsstand.naver.com/?list=ct4");
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS); //응답시간 5초설정
//		List<String> divList = new ArrayList<>();
		for(int i=0; i<11; i++){
			driver.findElement(By.cssSelector("#rollingUl > li > #f_" + i)).click();
			
			// Google 사이트 방문
			
			WebElement we = driver.findElement(By.cssSelector("#focusPanelCenter > div"));

			System.out.println("Page title is: " + driver.getTitle());
			SimpleDateFormat sd = new SimpleDateFormat("/yyyy/MM/dd/");
			String datePath = sd.format(new Date());
			String fileName = driver.findElement(By.cssSelector("#focusPanelCenter > div > iframe.ifr_arc")).getAttribute("title");
			try {
			  byte[] screengrab = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
			  BufferedImage img = ImageIO.read(new ByteArrayInputStream(screengrab));
			  Point topleft = we.getLocation();
			  Point bottomright = new Point(we.getSize().getWidth(), we.getSize().getHeight());
			  BufferedImage imgScreenshot= 
			      (BufferedImage)img.getSubimage(topleft.getX(), topleft.getY(), bottomright.getX(), bottomright.getY());
			  File screenshotLocation = new File("C:\\java-lec\\2nd_git\\mini_2nd\\WebContent\\captureimages" + datePath + fileName + ".png");
			  if(!screenshotLocation.exists()) screenshotLocation.mkdirs();
			  ImageIO.write(imgScreenshot, "png", screenshotLocation);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(i + "추가");
		}

		driver.close();
		System.out.println("드라이버 클로즈");
		
	}
	
}
