<?php

// frontend
Route::get('/', 'NewShopController@index');
// category by product
Route::get('product-category/{url}','NewShopController@categoryProducts');
// band by product
Route::get('band/{url}','NewShopController@bandProducts');
Route::get('product-details/{id}','NewShopController@productDetails');
// get product attribute price
Route::get('/get-product-price', 'NewShopController@getProductPrice');
// add to cart
Route::match(['get', 'post'], '/add-cart', 'CartController@addToCart');
// direct add to cart
Route::match(['get', 'post'], '/direct-cart', 'CartController@directAddToCart');
// show cart
Route::match(['get', 'post'], '/cart-show', 'CartController@showCart');
// remove from cart
Route::match(['get', 'post'], '/cart-remove/{id}', 'CartController@deleteCart');
// cart uptade
Route::match(['get', 'post'], '/cart-update', 'CartController@updateCart');
// search product
Route::match(['get', 'post'], '/search', 'SearchController@search');
// check subscriber email
Route::post('/check-subscriber-email', 'NewsletterController@checkSubscriberEmail');
// add subscriber email
Route::post('/add-subscriber-email', 'NewsletterController@addSubscriberEmail');
// shipping and return
Route::get('/shipping-return', 'ContactController@shippingReturn');
// secure shopping
Route:: get('/secure-shopping', 'ContactController@secureshopping');
// affiliates
Route:: get('/affiliates', 'ContactController@affiliates');
// contact us
Route::get('/contact-us', 'ContactController@showContact');
// contact us
Route::post('/contact', 'ContactController@contact');
//Make Dress
Route::get('/makedress','ContactController@makeDress');
//Dress details
Route::get('/dress-details','ContactController@dressDetails');
//Select Service
Route::get('/select-service','ContactController@selectService');
//measurement
Route::get('/measurement','ContactController@measurementOption');

//Home Make Address
Route::get('/home-make-address','ContactController@HomeMakeAddress');

// prevent route if trying to access without login
Route::group(['middleware' => 'front'], function() {
    // customer profie
    Route::match(['get', 'post'], '/profile', 'UserController@profile');
    // checkout
	Route::match(['get', 'post'], '/checkout', 'CheckoutController@index');
	// order review
	Route::match(['get', 'post'], '/order-review', 'CheckoutController@orderReview');
	// place order
	Route::match(['get', 'post'], '/place-order', 'CheckoutController@placeOrder');
	// order complete thanks page
	Route::get('/thanks', 'CheckoutController@completeOrder');
	// stripe
    Route::get('/stripe', 'CheckoutController@stripe');
	Route::match(['get', 'post'], '/stripe', 'CheckoutController@stripe');
	// order history
	Route::get('/orders', 'OrderController@orderHistory');
	Route::get('/order-history/{id}','OrderController@viewOrderHistory');
	// change password
	Route::match(['get', 'post'], '/password', 'UserController@showPassChangeForm');
	Route::match(['get', 'post'], '/pas_update', 'UserController@updatePassword');

});

// add to wishlist
Route::match(['get', 'post'], '/add', 'WishlistController@addWishList');
// show wisllist product
Route::match(['get', 'post'], '/show', 'WishlistController@showWishList');
// remove from wishlist
Route::match(['get', 'post'], '/remove', 'WishlistController@removeWishList');

// show customer registraion form
Route::get('/register', 'UserController@showRegister');
// save customer registraion data
Route::post('/save-register', 'UserController@saveCustomerRegister');
// customer logout
Route::post('/customer-logout', 'UserController@customerLogout');
// show customer login form
Route::get('/login', 'UserController@showUserLoginForm');
// save customer registraion data
Route::post('/login-check', 'UserController@checkCustomerLogin');
// forget password
Route::match(['get', 'post'], 'forgot-password', 'UserController@forgotPassword');



/* backend/admin */
Route::group(["middleware" => "admin"], function() {

	//category info
	Route::get('/category/add', [
		'uses' => 'CategoryController@addCategory',
		'as'   => 'add-category'
	]);

	Route::post('/category/save', [
		'uses' => 'CategoryController@saveCategory',
		'as'   => 'new-category'
	]);

	Route::get('/category/manage', [
		'uses' => 'CategoryController@manageCategory',
		'as'   => 'manage-category'
	]);


	Route::get('/category/unpublished/{id}', [
		'uses' => 'CategoryController@unpublishedCategory',
		'as'   => 'unpublished-category'
	]);

	Route::get('/category/published/{id}', [
		'uses' => 'CategoryController@publishedCategory',
		'as'   => 'published-category'
	]);

	Route::get('/category/edit/{id}', [
		'uses' => 'CategoryController@editCategory',
		'as'   => 'edit-category'
	]);

	Route::post('/category/update', [
		'uses' => 'CategoryController@updateCategory',
		'as'   => 'update-category'
	]);

	Route::get('/category/delete/{id}', [
		'uses' => 'CategoryController@deleteCategory',
		'as'   => 'delete-category'
	]);


	// manufacturer info
	Route::get('/manufacturer/add', [
		'uses' => 'ManufacturerController@addManufacturer',
		'as'   => 'add-manufacturer'
	]);

	Route::post('/manufacturer/save', [
		'uses' => 'ManufacturerController@saveManufacturer',
		'as'   => 'new-manufacturer'
	]);

	Route::get('/manufacturer/manage', [
		'uses' => 'ManufacturerController@manageManufacturer',
		'as'   => 'manage-manufacturer'
	]);

	Route::get('/manufacturer/unpublished/{id}', [
		'uses' => 'ManufacturerController@unpublishedManufacturer',
		'as'   => 'unpublished-manufacturer'
	]);

	Route::get('/manufacturer/published/{id}', [
		'uses' => 'ManufacturerController@publishedManufacturer',
		'as'   => 'published-manufacturer'
	]);

	Route::get('/manufacturer/edit/{id}', [
		'uses' => 'ManufacturerController@editManufacturer',
		'as'   => 'edit-manufacturer'
	]);

	Route::post('/manufacturer/update', [
		'uses' => 'ManufacturerController@updateManufacturer',
		'as'   => 'update-manufacturer'
	]);

	Route::get('/manufacturer/delete/{id}', [
		'uses' => 'ManufacturerController@deleteManufacturer',
		'as'   => 'delete-manufacturer'
	]);

	// product status name info
	Route::get('/status/add', [
		'uses' => 'ProductStatusController@addProductStatus',
		'as'   => 'add-product-status'
	]);

	Route::post('/status/save', [
		'uses' => 'ProductStatusController@saveProductStatus',
		'as'   => 'save-product-status'
	]);

	Route::get('/status/manage', [
		'uses' => 'ProductStatusController@manageProductStatus',
		'as'   => 'manage-product-status'
	]);

	Route::get('/status/unpublished/{id}', [
		'uses' => 'ProductStatusController@unpublishedProductStatus',
		'as'   => 'unpublished-product-status'
	]);

	Route::get('/status/published/{id}', [
		'uses' => 'ProductStatusController@publishedProductStatus',
		'as'   => 'published-product-status'
	]);

	Route::get('/status/edit/{id}', [
		'uses' => 'ProductStatusController@editProductStatus',
		'as'   => 'edit-product-status'
	]);

	Route::post('/status/update', [
		'uses' => 'ProductStatusController@updateProductStatus',
		'as'   => 'update-product-status-name'
	]);

	Route::get('/status/delete/{id}', [
		'uses' => 'ProductStatusController@deleteProductStatus',
		'as'   => 'delete-product-status'
	]);



	// customers info manage admin routes
	Route::get('/customer/manage', [
		'uses' => 'UserController@manageCustomer',
		'as'   => 'manage_customer'
	]);

	Route::get('/customer/active/{id}', [
		'uses' => 'UserController@activeCustomerStatus',
		'as'   => 'active-customer'
	]);

	Route::get('/customer/deactive/{id}', [
		'uses' => 'UserController@deactiveCustomerStatus',
		'as'   => 'deactive-customer'
	]);

	Route::get('/customer/delete/{id}', [
		'uses' => 'UserController@deleteCustomer',
		'as'   => 'delete-customer'
	]);


	// product info
	Route::get('/product/add', [
		'uses' => 'ProductController@addProduct',
		'as'   => 'add-product'
	]);

	Route::post('/product/save', [
		'uses' => 'ProductController@saveProduct',
		'as'   => 'new-product'
	]);

	Route::get('/product/manage', [
		'uses' => 'ProductController@manageProduct',
		'as'   => 'manage-product'
	]);

	Route::get('/product/unpublished/{id}', [
		'uses' => 'ProductController@unpublishedProduct',
		'as'   => 'unpublished-product'
	]);

	Route::get('/product/published/{id}', [
		'uses' => 'ProductController@publishedProduct',
		'as'   => 'published-product'
	]);

	Route::get('/product/edit/{id}', [
		'uses' => 'ProductController@editProduct',
		'as'   => 'edit-product'
	]);

	Route::post('/product/update', [
		'uses' => 'ProductController@updateProduct',
		'as'   => 'update'
	]);

	Route::get('/product/delete/{id}', [
		'uses' => 'ProductController@deleteProduct',
		'as'   => 'delete-product'
	]);

	// product attributes route
	Route::match(['get','post'], '/product/add-attribute/{id}', [
		'uses' => 'ProductController@addAttribute',
		'as'   => 'add-attribute'
	]);

	Route::post('/product/save-attribute/{id}', [
		'uses' => 'ProductController@saveAttribute',
		'as'   => 'save-attribute'
	]);

	Route::get('/product/delete-attribute/{id}', [
		'uses' => 'ProductController@deleteAttribute',
		'as'   => 'delete-attribute'
	]);

	//manage review from admin route
	Route::get('/review/manage', [
		'uses' => 'ReviewController@manageReviewInfo',
		'as'   => 'manage-review'
	]);

	Route::get('/review/unpublished/{id}', [
		'uses' => 'ReviewController@unpublishedReview',
		'as'   => 'unpublished-review'
	]);

	Route::get('/review/published/{id}', [
		'uses' => 'ReviewController@publishedReview',
		'as'   => 'published-review'
	]);

	Route::get('/review/delete/{id}', [
		'uses' => 'ReviewController@deleteReview',
		'as'   => 'delete-review'
	]);

	//order info
	Route::get('/order/manage-order', [
		'uses' => 'OrderController@manageOrderInfo',
		'as'   => 'manage-order'
	]);


	Route::get('/order/order-details/{id}', [
		'uses' => 'OrderController@viewOrderDetails',
		'as'   => 'view-order-details'
	]);

	Route::post('/order/status-update/{id}', [
		'uses' => 'OrderController@updateOrderStatus',
		'as'   => 'update-order-status'
	]);

	Route::post('/order/payment-status-update/{id}', [
		'uses' => 'OrderController@updatePaymentStatus',
		'as'   => 'update-payment-status'
	]);

	Route::get('/order/view-invoice/{id}', [
		'uses' => 'OrderController@viewOrderInvoice',
		'as'   => 'view-order-invoice'
	]);


	// Slider Image
	Route::get('/slider', 'SliderImageController@index')->name('slider_image');
	Route::post('/slider/save', 'SliderImageController@saveSliderImage')->name('save_slider_image');
	Route::get('/slider/manage', 'SliderImageController@manageSliderImage')->name('manage_slider');
	Route::get('/slider/unpublished/{id}', 'SliderImageController@unpublishedSlider')->name('unpublished-slider');
	Route::get('/slider/published/{id}', 'SliderImageController@publishedSlider')->name('published-slider');
	Route::get('/slider/delete/{id}', 'SliderImageController@deleteSlider')->name('delete-slider');

	// admin dashboard
	Route::get('/dashboard', 'HomeController@index')->name('dashboard');
	// admin logout
	Route::post('admin-logout', 'AdminAuthenticationController@adminLogout')->name('admin-logout');
	
	// show newsletter subscriber
	Route::get('show-newsletter', 'NewsletterController@showNewsletter')->name('newsletter_subscriber');
	// update newsletter status
	Route::get('update-newsletter-status/{id}/{status}', 'NewsletterController@updateNewsletterStatus');	
	// delete newsletter
	Route::get('delete_newsletter/{id}', 'NewsletterController@deleteNewsletter');
	// export newsletter
	// Route::get('export-newsletter', 'NewsletterController@exportNewsletter');

});



// Authentication
// login
Route::get('/admin-login', 'AdminAuthenticationController@showLoginForm');
Route::post('/admin-login', 'AdminAuthenticationController@checkAdminLogin')->name('admin-login');
// admin register
Route::get('/register-admin', 'AdminAuthenticationController@showRegisterForm')->name('add-admin');
Route::post('/register-admin', 'AdminAuthenticationController@adminRegister')->name('admin-register');



