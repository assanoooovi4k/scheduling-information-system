package by.bntu.fitr.povt.assanoooovi4k.schedule.weblayer.command;


import by.bntu.fitr.povt.assanoooovi4k.schedule.exception.DaoException;
import by.bntu.fitr.povt.assanoooovi4k.schedule.exception.ServiceException;

import javax.servlet.ServletException;
import java.io.IOException;

@FunctionalInterface
public interface Command {
    CommandResult execute(RequestContent requestContent) throws ServiceException, DaoException, IOException, ServletException;
}
