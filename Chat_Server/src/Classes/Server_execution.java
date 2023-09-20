package Classes;

import javax.swing.*;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class Server_execution {
    public Server_execution(){
        try{
            Registry reg = LocateRegistry.createRegistry(7777);
            rmi_interface objRmi = new implemation_rmi_interface();

            reg.rebind("servidor_chat", objRmi);

        }catch (Exception e){
            JOptionPane.showMessageDialog(null, "Erro no servidor"+ e.getMessage());
        }
    }
}
