package kr.co.bitnews.capture;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.openqa.selenium.By;
import org.openqa.selenium.ElementNotVisibleException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

@WebServlet("/capture")
public class CaptureController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("webdriver.chrome.driver", new File("C:\\java-lec\\2nd_git\\mini_2nd\\chrome\\chromedriver.exe").getAbsolutePath()); //크롬 드라이버 파일 경로설정
		WebDriver driver = new ChromeDriver();
		driver.get("http://newsstand.naver.com/?list=ct4");
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS); //응답시간 5초설정
		
		List<WebElement> liList = driver.findElements(By.cssSelector("#rollingUl > li"));
		System.out.println(liList.size());
		List<WebElement> frameList = new ArrayList<>();
		for (WebElement w : liList) {
			try {
				w.findElement(By.cssSelector("img")).click();
				System.out.println(w.findElement(By.cssSelector("img")).getAttribute("alt"));
				frameList.add(driver.findElement(By.cssSelector("#focusPanelCenter > div > iframe.ifr_arc")));
				System.out.println(driver.findElement(By.cssSelector("#focusPanelCenter > div > iframe.ifr_arc"))
						.getTagName());
			} catch (NoSuchElementException e) {
				// TODO: handle exception
			} catch (ElementNotVisibleException e) {
				// TODO: handle exception
			}
		}
		driver.close();
		System.out.println("드라이버 클로즈");
		System.out.println(frameList.size());
	}
	
}
