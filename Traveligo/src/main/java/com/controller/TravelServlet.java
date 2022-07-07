package com.controller;

import java.io.IOException;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Details;
import com.service.TravelService;
import com.training.util.ConnectionFactory;

/**
 * Servlet implementation class TravelServlet
 */
@WebServlet("/")
public class TravelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con = null;
	private TravelService service = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TravelServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {

		super.init();

		try {

			con = ConnectionFactory.getpostgresqlconnection();
			service = new TravelService(con);
			System.out.println("connection -" + con);

		} catch (Exception e) {

		}

	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = request.getServletPath();
		System.out.println(path);

		switch (path) {
		case "/":

			homePage(request, response);

			break;
		case "/validate":
			validatePage(request, response);

			break;
		case "/adminValidate":
			adminValidatePage(request, response);

			break;
		case "/view":
			viewallDetails(request, response);

			break;
		case "/addbook":
			addBookDetails(request, response);

			break;
		case "/findname":
			findByName(request, response);

			break;

		default:
			break;
		}

	}

	private void findByName(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String contact = request.getParameter("contact");
		Details fname = service.finbyname(contact);
		request.setAttribute("findname", fname);
		RequestDispatcher rd = request.getRequestDispatcher("Booking.jsp");
		rd.forward(request, response);

	}

	private void addBookDetails(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String mailid = request.getParameter("mailid");
		String contact = request.getParameter("contact");
		String sources = request.getParameter("sources");
		String destination = request.getParameter("destination");
		String date = request.getParameter("date");
		String time = request.getParameter("time");

		Details details = new Details(name, username, password, confirmpassword, age, gender, mailid, contact, sources,
				destination, date, time);
		Details entities = service.add(details);

		request.setAttribute("booking", entities);

		RequestDispatcher rd = request.getRequestDispatcher("/Booking.jsp");
		rd.forward(request, response);

	}

	private void adminValidatePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("adminvalidate.jsp");
		dispatcher.forward(request, response);

	}

	private void viewallDetails(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Details> details = service.viewDetails();
		request.setAttribute("travel", details);

		RequestDispatcher rd = request.getRequestDispatcher("/showdetails.jsp");
		rd.forward(request, response);

	}

	private void validatePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("/validation.jsp");
		rd.forward(request, response);

	}

	private void homePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("/adminpage.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = request.getServletPath();
		System.out.println(path);

		switch (path) {
		case "/add":
			addDetails(request, response);

			break;

		default:
			break;
		}

	}

	private void addDetails(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String mailid = request.getParameter("mailid");
		String contact = request.getParameter("contact");

		Details details = new Details(name, username, password, confirmpassword, age, gender, mailid, contact, null,
				null, null, null);
		Details entities = service.add(details);

		RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
		rd.forward(request, response);

	}

}
