import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.Properties;

public class Logger {
		  private String fileName;
		  private Properties properties;
		  private int priority;
		  /**
		   * Private constructor构造函数是私有的，因此，此类不能被继承
		   */
		  private Logger () {
		    logger = this;
		  }
		  public int getRegisteredLevel () {
			    int i = 0;
			    try {
			      InputStream inputstream = getClass ().getResourceAsStream (
			          "Logger.properties");
			      properties.load (inputstream);
			      inputstream.close ();
			      i = Integer.parseInt (properties.getProperty (
			          "**logger.registeredlevel**"));
			      if (i < 0 || i > 3)
			        i = 0;
			    }
			    catch (Exception exception) {
			        System.out.println ("Logger: Failed in the getRegisteredLevel method");
			        exception.printStackTrace ();
			      }
			      return i;
			    }
		  private String getFileName (GregorianCalendar gc) {
			    SimpleDateFormat dateFormat1 = new SimpleDateFormat ("dd-MMM-yyyy");
			    String dateString = dateFormat1.format (gc.getTime ());
			    String fileName = "C:\\temp\\log\\PatternsExceptionLog-" +
			        dateString + ".txt";
			    return fileName;
			  }
		  public void logMsg (String message) {
			    try {
			      GregorianCalendar gc = new GregorianCalendar ();
			      String fileName = getFileName (gc);
			      FileOutputStream fos = new FileOutputStream (fileName, true);
			      PrintStream ps = new PrintStream (fos);
			      SimpleDateFormat dateFormat2 = new SimpleDateFormat (
			          "EEE, MMM d, yyyy 'at' hh:mm:ss a");
			      ps.println ("<" + dateFormat2.format (gc.getTime ()) + ">[" + message +
			                  "]");
			      ps.close ();
			    }
			    catch (IOException ie) {
			        ie.printStackTrace ();
			      }
			    }
		  public static void initialize () {
			    logger = new Logger ();
			  }

			  // singleton - pattern
			  private static Logger logger;
			  public static Logger getLogger () {
			    return logger;
			  }
}

