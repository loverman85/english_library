package kr.co.englishlibrary.book.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.englishlibrary.book.service.Book;
import kr.co.englishlibrary.book.service.BookCommand;
import kr.co.englishlibrary.services.Daos;
import kr.co.englishlibrary.services.Genre;

@Service
public class BookService {
	@Autowired
	private BookDao bookDao;
	@Autowired
	private Daos dao;
	
	private static final Logger logger = LoggerFactory.getLogger(BookService.class);
	//도서등록폼에 보여줄 장르 가져오는메서드
	public List<Genre> getGenre(){
		logger.debug("getGenre() 메서드 호출");
		return dao.selectAllGenre();
	}
	//도서등록하는 메서드
	public int addBook(BookCommand bookCommand, String libraryId){
		Book book = new Book();
		//bookCommand -> book으로 옮김
		book.setLibraryId(libraryId);
		book.setGenreNo(bookCommand.getGenre());
		book.setBookName(bookCommand.getBookName());
		book.setBookAuthor(bookCommand.getBookAuthor());
		book.setBookPublisher(bookCommand.getBookPublisher());
		
		bookDao.insertBook(book);
		return 0;
	}
}
