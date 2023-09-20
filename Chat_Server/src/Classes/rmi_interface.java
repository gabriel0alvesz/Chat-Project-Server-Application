package Classes;
import java.io.IOException;
import java.rmi.Remote;
import java.rmi.RemoteException;

public interface rmi_interface extends Remote {
    public boolean GravaMSG(String msg) throws IOException;
    public  String RecuperaMSG() throws RemoteException;
}
