package epam.com.types;

import epam.com.ConfigurationManager;

import javax.servlet.http.HttpServletRequest;

public class BaseCommand implements AbstractCommand {

    public BaseCommand() {
    }

    @Override
    public String execute(HttpServletRequest request) {
        String page = ConfigurationManager.getProperty("path.page.login");
        return page;
    }
}
