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
  
  @SuppressWarnings("deprecation")
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  {

    IamOptions opt = new IamOptions.Builder()
    	    .apiKey("Lr9NL6FgnT9HUzETR0RIgvJ7qBNeaj3H5Zk0bH15G7tE")
    	    .build();
    @SuppressWarnings("deprecation")
	SpeechToText service = new SpeechToText(opt);
    service.setEndPoint("https://gateway-lon.watsonplatform.net/speech-to-text/api");
    
    Part filePart = request.getPart("audio"); 
    
    String appPath = request.getServletContext().getRealPath("");
	 String savePath = appPath + "audio";
	 System.out.println(savePath);
	 File fileSaveDir = new File(savePath);
	 if (!fileSaveDir.exists()) {
	     fileSaveDir.mkdir();
	 }
	 
	 String savedFile = "";
	
	 for (Part part : request.getParts()) {
	         String fileName = extractFileName(part);
	         fileName = new File(fileName).getName();
	         savedFile=savePath + File.separator + fileName;
	         part.write(savedFile);
	 }
    
	 String ext = savedFile.substring(savedFile.lastIndexOf(".")+1);    
	 
	 String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
    
    RecognizeOptions recognizeOptions = new RecognizeOptions.Builder()
    	    .audio(new FileInputStream(fileName))
    	    .contentType("audio/mp3")
    	    .model("en-US_BroadbandModel")
    	    .keywords(Arrays.asList("colorado", "tornado", "tornadoes"))
    	    .keywordsThreshold((float) 0.5)
    	    .maxAlternatives(3)
    	    .build();
      
      BaseRecognizeCallback baseRecognizeCallback =
    		    new BaseRecognizeCallback() {
    		      public void onTranscription (SpeechRecognitionResults speechRecognitionResults) {
    		          System.out.println(speechRecognitionResults);
    		      }
			      @Override
			      public void onDisconnected() {
			        System.exit(0);
			      }
      			};
      			
     SpeechRecognitionResults speechRecognitionResults = (SpeechRecognitionResults) service.recognize(recognizeOptions).execute().getResults();
     System.out.println(speechRecognitionResults);			
    
     String resultado = new String("");
    
    SpeechRecognitionResults result = (SpeechRecognitionResults) service.recognize(recognizeOptions).execute().getResults();
	if(result.getResults().size()>0) {
		 for (int i = 0; i < result.getResults().size() ; i++)  {
		System.out.println(result.getResults().get(i).getAlternatives().get(0).getTranscript());
		resultado = resultado.concat(result.getResults().get(i).getAlternatives().get(0).getTranscript());
		}
	}
		
	String traduccion= translator.translate(resultado);
	
//	Palabra palabra = new Palabra();
//	CloudantPalabraStore store = new CloudantPalabraStore();
//
//		if(store.getDB() == null) 
//		{
//		}
//		else
//		{
//			palabra.setName(traduccion);
//			store.persist(palabra);
//		}
//	
	
	request.setAttribute("original", resultado);	    		 
	request.setAttribute("traducido", traduccion);  
	request.getRequestDispatcher("feedback.jsp").forward(request, response);
  }
  
  private String extractFileName(Part part) {
      String contentDisp = part.getHeader("content-disposition");
      String[] items = contentDisp.split(";");
      for (String s : items) {
          if (s.trim().startsWith("filename")) {
              return s.substring(s.indexOf("=") + 2, s.length()-1);
          }
      }
      return "";
  }
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  {
	  String parametro = request.getParameter("nombreArchivo");
	  System.out.println(parametro);
	  
	  String path_mp3 = request.getRealPath("/audio");
	  System.out.println(path_mp3);
	  
	  IamOptions opt = new IamOptions.Builder()
	    	    .apiKey("Lr9NL6FgnT9HUzETR0RIgvJ7qBNeaj3H5Zk0bH15G7tE")
	    	    .build();
	    @SuppressWarnings("deprecation")
		SpeechToText service = new SpeechToText(opt);
	    service.setEndPoint("https://gateway-lon.watsonplatform.net/speech-to-text/api");
	  
	  FileInputStream fileStream = new FileInputStream(new File(path_mp3 + "/" + parametro + ".mp3"));
	  
	  RecognizeOptions recognizeOptions = new RecognizeOptions.Builder()
	    	    .audio(fileStream)
	    	    .contentType("audio/mp3")
	    	    .model("es-ES_BroadbandModel")
	    	    .keywords(Arrays.asList("colorado", "tornado", "tornadoes"))
	    	    .keywordsThreshold((float) 0.5)
	    	    .maxAlternatives(3)
	    	    .build();
	  
	  BaseRecognizeCallback baseRecognizeCallback =
  		    new BaseRecognizeCallback() {
  		      public void onTranscription (SpeechRecognitionResults speechRecognitionResults) {
  		          System.out.println(speechRecognitionResults);
  		      }
			      @Override
			      public void onDisconnected() {
			        System.exit(0);
			      }
    			};
    			
   SpeechRecognitionResults result = service.recognize(recognizeOptions).execute();
   System.out.println("Resultado" + result);			
  
   String resultado = new String("");
//  
//   SpeechRecognitionResult result = service.recognize(recognizeOptions).execute().getResults().get(0);
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

