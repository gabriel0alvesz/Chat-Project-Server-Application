package Classes;

import java.io.*;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class implemation_rmi_interface extends UnicastRemoteObject implements rmi_interface {

    protected implemation_rmi_interface() throws RemoteException {
    }

    @Override
    public boolean GravaMSG(String msg) throws IOException {
        try {
            FileWriter writer = new FileWriter("/Users/gabrielalves/IdeaProjects/Chat_Server/src/chat_texts.txt",true);
            writer.write(msg);
            writer.close();
            return true;
        }catch(IOException e){
            return false;
        }
    }

    @Override
    public String RecuperaMSG() throws RemoteException {
        try {
            FileReader reader = new FileReader("/Users/gabrielalves/IdeaProjects/Chat_Server/src/chat_texts.txt");
            BufferedReader buffer = new BufferedReader(reader);
            String msg_temp = "";
            while (buffer.ready()){
                msg_temp = buffer.readLine();
            }
            buffer.close();
            return msg_temp;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
