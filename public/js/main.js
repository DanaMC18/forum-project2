console.log('accio script!');

var $registerBtns;
var $loginBtns;

var $closeRegBtn;
var $closeLoginBtn;

var $registerModal;
var $loginModal;

// jquery
$(document).ready(function(){

//assign variables
$registerBtns = $('.register-btn');
$loginBtns = $('.login-btn');

$closeRegBtn = $('close-reg-btn');
$closeLoginBtn = $('close-login-btn');

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

$closeRegBtn.on('click', toggleRegisterModal);

$closeLoginBtn.on('click', toggleLoginModal);

});