package asr.proyectoFinal.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ibm.watson.developer_cloud.service.security.IamOptions;
import com.ibm.watson.developer_cloud.speech_to_text.v1.model.RecognizeOptions;
import com.ibm.watson.developer_cloud.speech_to_text.v1.model.SpeechRecognitionResult;
import com.ibm.watson.developer_cloud.speech_to_text.v1.model.SpeechRecognitionResults;
//import com.ibm.watson.developer_cloud.speech_to_text.v1.model.SpeechResults;
import com.ibm.watson.developer_cloud.speech_to_text.v1.websocket.BaseRecognizeCallback;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ToneAnalysis;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ToneOptions;
import com.ibm.watson.developer_cloud.speech_to_text.v1.SpeechToText;

//import asr.proyectoFinal.dao.CloudantPalabraStore;
import asr.proyectoFinal.dominio.Palabra;

@SuppressWarnings({ "deprecation", "deprecation" })
@MultipartConfig
@WebServlet(urlPatterns = {"/speechToText"})
public class speechToText extends HttpServlet {
  
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  {
	  String cancion = request.getParameter("cancion");
	  
	  System.out.println(cancion);
	  
	  String path_mp3 = request.getRealPath("/audio");
	  System.out.println(path_mp3);
	  
	  IamOptions opt = new IamOptions.Builder()
	    	    .apiKey("Lr9NL6FgnT9HUzETR0RIgvJ7qBNeaj3H5Zk0bH15G7tE")
	    	    .build();
	    @SuppressWarnings("deprecation")
		SpeechToText service = new SpeechToText(opt);
	    service.setEndPoint("https://gateway-lon.watsonplatform.net/speech-to-text/api");
	  
	  FileInputStream fileStream = new FileInputStream(new File(path_mp3 + "/" + cancion.toString() + ".mp3"));
      System.out.println(fileStream.toString());

	  RecognizeOptions recognizeOptions = new RecognizeOptions.Builder()
	    	    .audio(fileStream)
	    	    .contentType("audio/mp3")
	    	    .model("en-US_BroadbandModel")
	    	    .build();
	  
   SpeechRecognitionResults result = service.recognize(recognizeOptions).execute();
   System.out.println("Resultado" + result);			
  
   String resultado = new String("");

   if(result.getResults().size()>0) {
		 for (int i = 0; i < result.getResults().size() ; i++)  {
		System.out.println(result.getResults().get(i).getAlternatives().get(0).getTranscript());
		resultado = resultado.concat(result.getResults().get(i).getAlternatives().get(0).getTranscript());
		}
	}
		
	String traduccion= translator.translate(resultado);
	request.setAttribute("original", resultado);	    		 
	request.setAttribute("traducido", traduccion);  
	  
	request.getRequestDispatcher("feedback.jsp").forward(request, response);
	  
	  
  }
  
}

