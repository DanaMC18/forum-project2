console.log('accio script!');

var $registerBtns;
var $loginBtns;

var $RegCloseBtn;
var $LoginCloseBtn;

var $registerModal;
var $loginModal;

// jquery
$(document).ready(function(){


//assign variables
$registerBtns = $('.register-btn');
$loginBtns = $('.login-btn');

$RegCloseBtn = $('#reg-close-btn');
$LoginCloseBtn = $('#login-close-btn');

$registerModal = $('#register');
$loginModal = $('#login');

// create functions to toggle modals
var toggleRegisterModal = function (){
  $registerModal.toggle();
}

var toggleLoginModal = function (){
  $loginModal.toggle();
}

// event listeners on modals
$registerBtns.on('click', toggleRegisterModal);

$loginBtns.on('click', toggleLoginModal);

$RegCloseBtn.on('click', toggleRegisterModal);

$LoginCloseBtn.on('click', toggleLoginModal);

});