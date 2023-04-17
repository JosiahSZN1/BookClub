package com.codingdojo.bookclub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.bookclub.models.Book;
import com.codingdojo.bookclub.repositories.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepository;
	
	public Book createBook(Book book) {
		return bookRepository.save(book);
	}
	
	public Book findBook(Long id) {
		Optional<Book> result = bookRepository.findById(id);
		if(result.isPresent()) {
			return result.get();
		} else {
			return null;
		}
	}
	
	public List<Book> allBooks() {
		return bookRepository.findAll();
	}
}
