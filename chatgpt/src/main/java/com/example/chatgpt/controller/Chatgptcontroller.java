package com.example.chatgpt.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.chatgpt.model.Chatgptmodel;

@RestController
//@RequestMapping("/askanything")
public class Chatgptcontroller {

	@PostMapping("/askanything")
	public String askanything(@RequestBody Chatgptmodel chatgptmodel)

	{
		
		System.out.println(chatgptmodel);
		   String url = "https://api.openai.com/v1/chat/completions";

	        String apiKey = "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";

	        String model = "gpt-3.5-turbo";
	        try {

	            // Create the HTTP POST request

	            URL obj = new URL(url);

	            HttpURLConnection con = (HttpURLConnection) obj.openConnection();

	            con.setRequestMethod("POST");

	            con.setRequestProperty("Authorization", "Bearer " + apiKey);

	            con.setRequestProperty("Content-Type", "application/json");



	            // Build the request body

	            String body = "{\"model\": \"" + model + "\", \"messages\": [{\"role\": \"user\", \"content\": \"" + chatgptmodel.getQuestion() + "\"}]}";

	            con.setDoOutput(true);

	            OutputStreamWriter writer = new OutputStreamWriter(con.getOutputStream());

	            writer.write(body);

	            writer.flush();

	            writer.close();



	            // Get the response

	            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));

	            String inputLine;

	            StringBuffer response = new StringBuffer();

	            while ((inputLine = in.readLine()) != null) {

	                response.append(inputLine);

	            }

	            in.close();



	            return (response.toString().split("\"content\":\"")[1].split("\"")[0]).substring(4);



	        } catch (IOException e) {

	            throw new RuntimeException(e);

	        }

	       

	}
	
	@GetMapping("/test")
	public String testmethod()

	{

		return "hi get method";

	}
	

}
