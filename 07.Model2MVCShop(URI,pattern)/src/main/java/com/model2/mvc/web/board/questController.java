package com.model2.mvc.web.board;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.board.BoardService;
import com.model2.mvc.service.domain.Board;
import com.model2.mvc.service.domain.User;

@Controller
@RequestMapping("/quest/*")
public class questController {
	
	@Autowired
	@Qualifier("questServiceImpl")
	private BoardService boardService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	
	
	@RequestMapping("/addBoard")
	public String addBoard(@ModelAttribute("board") Board board,
							HttpSession session,
							@RequestParam("prodNo") int prodNo
			) throws Exception {
		
		User user = (User)session.getAttribute("user");
		board.setQuesId(user.getUserId());
		board.setQuesState("1");
		board.setProdNo(prodNo);
		boardService.addBoard(board);
		
		return "redirect:/product/getProduct?prodNo="+prodNo+"&menu=search";
	}
	
	@RequestMapping("/addBoardView")
	public String addBoardView(@RequestParam("prodNo") int prodNo,
								HttpServletRequest request
			) throws Exception {
		
		request.setAttribute("prodNo", prodNo);
		return "forward:/question/addBoardView.jsp";
	}
	
	@RequestMapping("/listBoard")
	public String listBoard(@RequestParam(value="currentPage",defaultValue="1") int currentPage,
							HttpSession session,Model model,
							@ModelAttribute("search") Search search) throws Exception {
		
		search.setCurrentPage(currentPage);
		search.setPageSize(pageSize);
		
		User user = (User)session.getAttribute("user");
		
		String userId = user.getRole();
		if(!userId.equals("admin")) {
			userId = user.getUserId();
		}
		Map<String,Object> map = boardService.getBoardList(userId,search);
		
		Page page	= 
				new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		
		
		model.addAttribute("list",map.get("list"));
		model.addAttribute("search", search);
		model.addAttribute("page", page);
		
		return "forward:/board/listBoard.jsp";

	}
	
	@RequestMapping("getBoard")
	public String getBoard( @RequestParam("quesNo") int quesNo,
								HttpServletRequest request
								//,HttpSession session
			) throws Exception {
		
		//User user = (User)session.getAttribute("user");
		
		//user.getRole().equals("admin");
		
		System.out.println("!!!!!!!!!!"+quesNo);
		
		Board board = boardService.getBoard(quesNo);


		request.setAttribute("board", board);


		return "forward:/board/getBoard.jsp";
	}
	
	@RequestMapping("updateBoard")
	public String updateBoard( @ModelAttribute("board") Board board
									) throws Exception {
		
		board.setQuesState("2");
		boardService.updateBoard(board);
		
		return "forward:/board/getBoard?quesNo="+board.getQuesNo();
	}
	
//	@RequestMapping("updateProductView")
//	public String updateProductView(HttpServletRequest request) throws Exception {
//		
//
//		int prodNo = Integer.parseInt(request.getParameter("prodNo"));
//		System.out.println("판매번호 : " + prodNo);
//		
//		//request.setAttribute("prodNo", prodNo);
//		
//		Product pVo = productService.getProduct(prodNo);
//		
//		request.setAttribute("pVo", pVo);
//		
//		return "forward:/product/updateProductView.jsp";
//	}
//
//	
	
	
	
}
