/* Referred logic of seperate thread for each client from this link:
https://stackoverflow.com/questions/10131377/socket-programming-multiple-client-to-one-server
* EchoThread class consisting of methods to perform echo, mathematical operation for every client request
* PROGRAMMER: ANKIT GAYAPRASAD YADAV & GAURI GOVIND RAJULU
* CWID: A20411701, A20404821
* DATE: 02/01/2017
* FILE NAME: EchoThread.java
* LAB:01 */

package com.server;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.StringTokenizer;
public class EchoThread extends Thread {
    protected Socket socket;

    public EchoThread(Socket clientSocket) {
        this.socket = clientSocket;
    }
			
public void run(){
	System.out.println("Server: Client Connected");
	BufferedReader input;
	try {
		input = new BufferedReader(new InputStreamReader(socket.getInputStream()));
	PrintWriter print = new PrintWriter(socket.getOutputStream(), true);
	while (true) {

		String echoString = input.readLine();
		if (echoString.equalsIgnoreCase("exit")) {
			print.println("Thank you.");
			break;
		}

		if (echoString.equalsIgnoreCase("count")){
			print.println("The number of clients connected to the Server: "+ServerCode.countOfClient);
		}else if(echoString.contains("+")||echoString.contains("-")||echoString.contains("/")||
				echoString.contains("%")||echoString.contains("//")||echoString.contains("/")){
			performOperations(echoString,print);
		}
		else {
			print.println("Server: 515 OK echo from Server:" + echoString);
		}
	}
	} catch (IOException e) {
		e.printStackTrace();
	}
	  finally{    
		    try{
		        System.out.println("Connection Closing..");
		        if (socket!=null){
		        	socket.close();
		        System.out.println("Socket Closed");
		        }

		        }
		    catch(IOException ie){
		        System.out.println("Socket Close Error");
		    }
		   }//end finally
}
public static void performOperations(String echoString, PrintWriter print){
	// StringTokenizer will separate the equation into the operand
	// and operation
	int result, oprnd1, oprnd2;
	StringTokenizer st;
	st = new StringTokenizer(echoString);
	oprnd1 = Integer.parseInt(st.nextToken());
	String operation = st.nextToken();
	oprnd2 = Integer.parseInt(st.nextToken());

	if (echoString.contains("+")) {
		result = oprnd1 + oprnd2;
		/*
		 * String[] temp = echoString.split("\\+"); numb1 =
		 * Integer.parseInt(temp[0]); numb2 =
		 * Integer.parseInt(temp[1]);
		 * 
		 * result = numb1 + numb2;
		 */

		print.println("Answer: " + result);
	} else if (echoString.contains("*")) {
		
		result = oprnd1 * oprnd2;
		print.println("Answer: " + result);
	} else if (echoString.contains("//")) {
		
		result = Math.floorDiv(oprnd1, oprnd2);
		print.println("Answer: " + result);
	} else if (echoString.contains("-")) {
		
		result = oprnd1 - oprnd2;
		print.println("Answer: " + result);
	} else if (echoString.contains("%")) {
		
		result = oprnd1 % oprnd2;
		print.println("Answer: " + result);
	} else if (echoString.contains("/")) {
					result = oprnd1 / oprnd2;
		print.println("Answer : " + result);
	} 
}
}
