package epam.com;

import com.epam.types.*;
import epam.com.types.*;
import epam.types.*;

public class Client {

    public Client() {
    }

    public AbstractCommand initCommand(TypeCommand cmd) {
        AbstractCommand command = new BaseCommand();
        switch(cmd) {
            case LOGIN:

                command = new LoginCommand();
                break;
            case LOGOUT:

                command = new LogoutCommand();
                break;
        }
        return command;
    }



}
