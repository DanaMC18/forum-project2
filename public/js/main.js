// jquery
$(document).ready(function(){


//assign variables
var $mainRegBtn = $('#main-reg-btn');
var $mainLoginBtn = $('#main-login-btn');

var $RegCloseBtn = $('#reg-close-btn');
var $LoginCloseBtn = $('#login-close-btn');

var $registerModal = $('#register');
var $loginModal = $('#login');

var $loginCommentBtn = $('#comment-login');


// create functions to toggle modals
var toggleRegisterModal = function (){
  $registerModal.toggle();
}

var toggleLoginModal = function (){
  $loginModal.toggle();
}

var toggleCommentEditor = function(){
  $editCommentForms.toggle();
}
 
// event listeners on modals
$mainRegBtn.on('click', toggleRegisterModal);
$mainLoginBtn.on('click', toggleLoginModal);

$RegCloseBtn.on('click', toggleRegisterModal);
$LoginCloseBtn.on('click', toggleLoginModal);

$loginCommentBtn.on('click', toggleLoginModal);

});

















