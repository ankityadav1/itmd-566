/*
* ClientCode class consisting of client simulation method calls.
* PROGRAMMER: ANKIT GAYAPRASAD YADAV & GAURI GOVIND RAJULU
* CWID: A20411701, A20404821
* DATE: 02/01/2017
* FILE NAME: ClientCode.java
* LAB:01 */
package com.server;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class ClientCode {

	public static void main(String[] args) throws UnknownHostException, IOException {
		Socket clientSocket = new Socket("localhost",5000);
		BufferedReader echoes = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
		PrintWriter print = new PrintWriter(clientSocket.getOutputStream(),true);
		
		Scanner scObject = new Scanner(System.in);
		
		String response,echoString = null;
		
		do{
			System.out.println("1.Enter the string to be echoed OR"
					+ "\n2.Enter mathematical operations to be executed:(operand operator operand) OR"
					+ "\n3.Count of clients");
			echoString = scObject.nextLine();
			print.println(echoString);
			if(!echoString.equals("exit")){
				response = echoes.readLine();
				System.out.println(response);
			}
		}while(!echoString.equals("exit"));
		scObject.close();
		clientSocket.close();
	}


}






















/*import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Scanner;
 
public class ClientCode
{
    public static void main(String[] args) throws IOException
    {
        Scanner sc = new Scanner(System.in);
 
        // Step 1: Open the socket connection.
        Socket s = new Socket("localhost", 7515);
        // Step 2: Communication-get the input and output stream
        DataInputStream dis = new DataInputStream(s.getInputStream());
        DataOutputStream dos = new DataOutputStream(s.getOutputStream());
//        String message="";
//       System.out.println("Say hello to server!");
//       message=sc.nextLine();
//       dos.writeUTF(message);

        while (true)
        {
            // Enter the equation in the form-
            // "operand1 operation operand2"
            System.out.print("Enter the equation in the form: ");
            System.out.println("'operand operator operand'");
 
            String inp = sc.nextLine();
 
            if (inp.equals("bye"))
                break;
 
            // send the equation to server
            dos.writeUTF(inp);
 
            // wait till request is processed and sent back to client
            String ans = dis.readUTF();
            System.out.println("Answer=" + ans);
        }
    }
}*/
/*
 * import java.net.*;
import java.util.Scanner;
import java.io.*;
class ClientCode
{
	public static void main(String[] args) throws Exception
	{
		int c=0;
		Socket s = new Socket("127.0.0.1", 8765);
		InputStream in = s.getInputStream();
		OutputStream out = s.getOutputStream();
		Scanner sc = new Scanner(System.in);
		String str,num1,num2,oprtr = "Hello\n";
		System.out.println("Enter 1st number:");
		num1=sc.nextLine();
		out.write(num1.getBytes());
		System.out.println("Enter 2nd number:");
		num2=sc.nextLine();
		out.write(num2.getBytes());
		System.out.println("Select mathematical operation:\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division");
		oprtr=sc.nextLine();
		out.write(oprtr.getBytes());

		byte[] num1B = num1.getBytes();
		out.write(num1B);
		
		byte[] num2B = num2.getBytes();
		out.write(num1B);
	
		byte[] oprtrB = oprtr.getBytes();
		out.write(num1B);
		while ((c=in.read()) != -1)
			System.out.print((char)c);
		s.close();
	}
}

 */
