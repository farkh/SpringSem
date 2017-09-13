package com.springapp.mvc.controllers;

import com.springapp.mvc.DAO.BookDao;
import com.springapp.mvc.model.Book;
import com.springapp.mvc.service.BookService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;

@Controller
public class BookController {
    @Autowired
    private BookDao bookDao;

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public ModelAndView getBooksList() {
        List<Book> books = bookDao.listBooks();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("bookslist");
        modelAndView.addObject("books", books);
        return modelAndView;
    }


    @RequestMapping(value = "/books/add", method = RequestMethod.GET)
    public String book(Model model) {
        model.addAttribute("addBook", new Book());
        return "addBook";
    }

    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("addBook") Book book) {
        bookDao.addBook(book);
        System.out.println(
                " book added " + book.getBookTitle() + "\n"
        );
        return "redirect:/books";
    }

    @RequestMapping(value = "books/{id}/update", method = RequestMethod.GET)
    public String showeditBook(@PathVariable("id") int id, Model model){
       Book book = bookDao.getBookById(id);
       model.addAttribute("book", book);

        return "edit" ;
    }

    @RequestMapping(value = "books/update", method = RequestMethod.POST)
    public String editBook(@ModelAttribute("book") Book book) {
        bookDao.updateBook(book);
        return "redirect:/books";
    }

    // delete user
    @RequestMapping(value = "/books/{id}/delete", method = RequestMethod.POST)
    public String deleteBook(@PathVariable("id") int id, @ModelAttribute("deleteBook") Book book) {

        bookDao.removeBook(id);

        return "redirect:/books";

    }

    // show user
    @RequestMapping(value = "/books/{id}", method = RequestMethod.GET)
    public String showBook(@PathVariable("id") int id, Model model) {

        Book book = bookDao.getBookById(id);
        model.addAttribute("book", book);

        return "showbook";

    }
}

