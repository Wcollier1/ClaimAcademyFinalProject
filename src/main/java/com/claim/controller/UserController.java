package com.claim.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.CheckOut;
import com.claim.entity.Person;
import com.claim.entity.Product;
import com.claim.entity.ShoppingCart;
import com.claim.service.CheckOutEmail;
import com.claim.service.CheckOutService;
import com.claim.service.PersonService;
import com.claim.service.ProductService;
import com.claim.service.SendMail;
import com.claim.service.ShoppingCartService;

@Controller
public class UserController {


	@Autowired
	private SendMail sendEmail;
	private final static String message = "Euphoric Ambience appreciate your business";
	private final static String subject = "Thank you for registering";
	private final static String message1 = "Euphoric Ambience appreciate your business";
	private final static String subject1 = "Thank you for your purchase";


	@Autowired
	private PersonService personService;

	@Autowired
	private ProductService productService;

	@Autowired
	private ShoppingCartService shoppingCartService;

	@Autowired
	private CheckOutService checkOutService;

	public static void getProductsList(Model model, ProductService productService ) {
		//Male Fragrance menu
		List<Product> maleProducts1 = productService.maleGender1();
		model.addAttribute("maleProducts1", maleProducts1);

		List<Product> maleProducts2 = productService.maleGender2();
		model.addAttribute("maleProducts2", maleProducts2);

		List<Product> maleProducts3 = productService.maleGender3();
		model.addAttribute("maleProducts3", maleProducts3);

		List<Product> maleProducts4 = productService.maleGender4();
		model.addAttribute("maleProducts4", maleProducts4);

		//Female Fragrance menu
		List<Product> femaleProducts1 = productService.femaleGender1();
		model.addAttribute("femaleProducts1", femaleProducts1);

		List<Product> femaleProducts2 = productService.femaleGender2();
		model.addAttribute("femaleProducts2", femaleProducts2);

		List<Product> femaleProducts3 = productService.femaleGender3();
		model.addAttribute("femaleProducts3", femaleProducts3);

		List<Product> femaleProducts4 = productService.femaleGender4();
		model.addAttribute("femaleProducts4", femaleProducts4);
	}


	@RequestMapping("/index")
	public String index(Model model) {
		UserController.getProductsList(model, productService);


		List<Product> products = productService.limit();
		model.addAttribute("myUserProducts",products);
		return "index";
	}


	@RequestMapping(value="/login", method= RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("loginUser", new Person());
		return "login";
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String handlelogin(Model model,@ModelAttribute("loginUser") Person user,HttpSession session){

		if(user.getEmail().equals("EuphoricAmbienceUser@gmail.com"))
		{
			List<CheckOut> adminCustomerData = checkOutService.adminAddress();
			model.addAttribute("adminCustomerData", adminCustomerData);

			List<ShoppingCart> adminProducts = shoppingCartService.adminproducts();
			model.addAttribute("adminProducts", adminProducts);

			return "admin";
		}


		//Person user = (Person)session.getAttribute("loginUser");
		Person p = this.personService.login2(user.getEmail(), user.getPassword());
		List<Product> products = productService.limit();
		model.addAttribute("myUserProducts",products);

		UserController.getProductsList(model, productService);


		session.setAttribute("loginUser", p );


		if (p == null) {
			model.addAttribute("loginError", "email or password is invalid");
			return"login";
		} else {
			//session.setAttribute("loggedInUser", p);
			return "index";
		}


	}


	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public ModelAndView register(Model model){
		return new ModelAndView("signup","signUpUser", new Person());	
	}

	@RequestMapping(value="/checkout", method = RequestMethod.GET)
	public String checkout(Model model,HttpSession session){
		Person user = (Person)session.getAttribute("loginUser");

		CheckOut checkOut = new CheckOut();
		checkOut.setEmail(user.getEmail());
		checkOut.setFirstname(user.getFirstName());
		checkOut.setLastname(user.getLastName());


		session.setAttribute("checkOutUser", checkOut );
		model.addAttribute("checkOutUser", checkOut);
		checkOutService.save(checkOut);
		sendEmail.sendMail(user.getEmail(), message1, subject1);
		return "checkout";
	}

	@RequestMapping(value="/saveCheckout", method = RequestMethod.POST)
	public String saveCheckout(Model model,HttpSession session,@ModelAttribute("checkOutUser") CheckOut checkOut){
		checkOutService.save(checkOut);
		return "index";

	}


	/*@RequestMapping(value="/checkout", method=RequestMethod.POST)
	public String handleCheckOut(Model model, HttpSession session, HttpServletRequest request){
		Person user = (Person)session.getAttribute("loginUser");

		CheckOut checkOut = new CheckOut();
		checkOut.setEmail(user.getEmail());
		checkOut.setFirstname(user.getFirstName());
		checkOut.setLastname(user.getLastName());


		session.setAttribute("checkOutUser", checkOut );
		model.addAttribute("checkOutUser", checkOut);
		checkOutService.save(checkOut);
		sendEmail.sendMail(user.getEmail(), message, subject);
		return "checkout";


	}*/

	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String handleSignup(Model model, @ModelAttribute("signUpUser") Person user, HttpSession session){
		personService.save(user);
		sendEmail.sendMail(user.getEmail(), message, subject);
		model.addAttribute("loginUser", user);
		session.setAttribute("loginUser", user);
		return "login";


	}


	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session){
		session.removeAttribute("loginUser");
		List<Product> products = productService.limit();
		model.addAttribute("myUserProducts",products);
		UserController.getProductsList(model, productService);

		if(model.containsAttribute("loginUser")) {
			model.addAttribute("loginUser", null);
		}

		return "index";	
	}


	@RequestMapping(value="/menAnnuci", method = RequestMethod.GET)
	public String Annuci(Model model, HttpSession session, HttpServletRequest request){
		Person user = (Person)session.getAttribute("loginUser");
		session.setAttribute("loginUser", user );

		String prodId = request.getParameter("productID");
		System.out.println("ProductId: "+prodId);


		Product product = productService.menAnucci(prodId);
		model.addAttribute("product", product);

		String[] colors = product.getColors().split(",");
		model.addAttribute("colors",colors);


		Product hiddenProduct = productService.menAnucci(prodId);
		model.addAttribute("hiddenProduct",hiddenProduct);

		List<Product> hiddenProducts = productService.maleGender1();
		model.addAttribute("hiddenProducts",hiddenProducts);


		UserController.getProductsList(model, productService);


		return "menAnucci";
	}



	@RequestMapping(value="/about", method = RequestMethod.GET)
	public String About(Model model, HttpSession session, HttpServletRequest request){
		//Male Fragrance menu


		UserController.getProductsList(model, productService);

		Person user = (Person)session.getAttribute("loginUser");
		session.setAttribute("loginUser", user );

		return "about";
	}



	@RequestMapping(value="/contactUs", method = RequestMethod.GET)
	public String contactUs(Model model, HttpSession session){
		UserController.getProductsList(model, productService);



		Person p = (Person)session.getAttribute("loginUser");
		session.setAttribute("loginUser", p );
		model.addAttribute("loginUser", p);

		return "contactUs";
	}



	@RequestMapping(value="/shoppingCart", method = RequestMethod.POST)
	public String shoppingCart(Model model, HttpSession session, @ModelAttribute("hiddenProduct")Product product){
		System.out.println("Product details !!!!"+product.getProductName()+product.getProductId());

		Person user = (Person)session.getAttribute("loginUser");

		if (user == null) {

			return "index";
		}
		session.setAttribute("loginUser", user );

		ShoppingCart sCart = new ShoppingCart();
		sCart.setProductId(product.getProductId());
		sCart.setProductName(product.getProductName());
		sCart.setColors(product.getColors());
		sCart.setProductPrice(product.getPrice());
		sCart.setSize(product.getSize());
		sCart.setGender(product.getGender());
		sCart.setTotal(product.getPrice());
		sCart.setActive(true);
		sCart.setEmail(user.getEmail());

		model.addAttribute("hiddenProduct",sCart);
		shoppingCartService.save(sCart);

		List<ShoppingCart> productsCart = shoppingCartService.sCarts(user.getEmail());
		model.addAttribute("productsCart",productsCart);

		//Calculating total price
		double totPrice =0.0;
		for (ShoppingCart shoppingCart : productsCart) {
			totPrice+=shoppingCart.getProductPrice();
		}
		model.addAttribute("totPrice",totPrice);


		UserController.getProductsList(model, productService);



		return "shoppingCart";

	}



	@RequestMapping(value="/deleteItem", method = RequestMethod.GET)
	public String deleteItem(Model model, HttpSession session, HttpServletRequest request){

		Person user = (Person)session.getAttribute("loginUser");

		if (user == null) {

			return "index";
		}
		session.setAttribute("loginUser", user );
		String productID = request.getParameter("productId");
		System.out.println("Product to be deleted: "+productID);

		shoppingCartService.dCarts(user.getEmail(), productID);
		System.out.println("Number of products deleted: ");

		List<ShoppingCart> productsCart = shoppingCartService.sCarts(user.getEmail());
		model.addAttribute("productsCart",productsCart);


		//Calculating total price
		double totPrice =0.0;
		for (ShoppingCart shoppingCart : productsCart) {
			totPrice+=shoppingCart.getProductPrice();
		}
		model.addAttribute("totPrice",totPrice);


		UserController.getProductsList(model, productService);



		return "shoppingCart";

	}


	@RequestMapping(value="/menViewMore", method = RequestMethod.GET)
	public String menViewMore(Model model, HttpSession session, HttpServletRequest request){

		Person user = (Person)session.getAttribute("loginUser");
		session.setAttribute("loginUser", user );

		List<Product> maleProducts = productService.malefragrances();
		model.addAttribute("maleProducts", maleProducts);

		String prodId = request.getParameter("productID");
		System.out.println("productId: "+prodId);


		Product product = productService.menAnucci(prodId);
		model.addAttribute("product", product);



		UserController.getProductsList(model, productService);










		return "menViewMore";

	}



	@RequestMapping(value="/womenViewMore", method = RequestMethod.GET)
	public String womenViewMore(Model model, HttpSession session){
		UserController.getProductsList(model, productService);



		List<Product> femaleProducts = productService.femalefragrances();
		model.addAttribute("femaleProducts", femaleProducts);

		Person user = (Person)session.getAttribute("loginUser");
		session.setAttribute("loginUser", user );

		return "womenViewMore";

	}



	@RequestMapping(value="/admin", method = RequestMethod.GET)
	public String adminpage(Model model, HttpSession session){
		List<CheckOut> adminCustomerData = checkOutService.adminAddress();
		model.addAttribute("adminCustomerData", adminCustomerData);

		List<ShoppingCart> adminProducts = shoppingCartService.adminproducts();
		model.addAttribute("adminProducts", adminProducts);


		return "admin";

	}



	@RequestMapping(value="/womenAmberWhite", method = RequestMethod.GET)
	public String AmberWhite(Model model, HttpSession session, HttpServletRequest request){

		String prodId = request.getParameter("productID");
		System.out.println("ProductId: "+prodId);

		Product product = productService.womenAmberWhite(prodId);
		model.addAttribute("product", product);


		String[] colors = product.getColors().split(",");
		model.addAttribute("colors",colors);


		Product hiddenProduct = productService.womenAmberWhite(prodId);
		model.addAttribute("hiddenProduct",hiddenProduct);

		List<Product> hiddenProducts = productService.femaleGender1();
		model.addAttribute("hiddenProducts",hiddenProducts);


		UserController.getProductsList(model, productService);

		Person user = (Person)session.getAttribute("loginUser");
		session.setAttribute("loginUser", user );

		return "womenAmberWhite";
	}





}






