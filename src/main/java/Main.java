import com.springapp.mvc.DAO.BookDao;
import com.springapp.mvc.DAO.BookDaoImpl;
import com.springapp.mvc.config.SpringConfig;
import com.springapp.mvc.model.Book;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(SpringConfig.class);
        BookDao bookDao = context.getBean(BookDaoImpl.class);
        bookDao.addBook(new Book(8, "Title", "Author", 123));
        System.out.println(bookDao.getBookById(8).getBookTitle());

    }


}
