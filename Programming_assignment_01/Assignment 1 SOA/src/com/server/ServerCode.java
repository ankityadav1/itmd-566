/*
 * Referred logic for performing mathematical calculation from this link:
 * https://www.geeksforgeeks.org/simple-calculator-using-tcp-java/
 * ServerCode class consisting of methods to start new thread for every client request 
 * and keep count of all clients connected to the server. 
 * PROGRAMMER: ANKIT GAYAPRASAD YADAV & GAURI GOVIND RAJULU
 * CWID: A20411701, A20404821
 * DATE: 02/01/2017
 * FILE NAME: ServerCode.java
 * LAB:01
 */
package com.server;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class ServerCode {
	public static int countOfClient=0;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
			ServerSocket serverSocket = null;
			Socket socket = null;
			try {
				serverSocket = new ServerSocket(5000);
			}
			catch (IOException e) {
	            e.printStackTrace();

	        }
			while(true){
		try{
			socket=serverSocket.accept();
			clientcount();
		}
		catch (IOException e) {
            e.printStackTrace();

        }
        new EchoThread(socket).start();
			}
	}
	private static void clientcount() {
		countOfClient++;		
	}
}